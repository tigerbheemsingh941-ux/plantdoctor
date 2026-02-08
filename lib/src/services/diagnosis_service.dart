import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:image/image.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/scan_result.dart';

class DiagnosisService {
  final _uuid = const Uuid();

  String get _apiKey => dotenv.env['GEMINI_API_KEY'] ?? '';

  Future<ScanResult> analyzeImage(String imagePath) async {
    try {
      // Validate API key
      if (_apiKey.isEmpty) {
        throw Exception(
          "API Error: API key not configured. Please check your .env file.",
        );
      }

      // 1. Resize Image
      final File resizedImage = await resizeImage(imagePath);
      final bytes = await resizedImage.readAsBytes();

      // 2. Prepare Model
      final model = GenerativeModel(
        model: 'gemini-2.5-pro',
        apiKey: _apiKey,
        generationConfig: GenerationConfig(
          responseMimeType: 'application/json',
          responseSchema: Schema.object(
            properties: {
              "plant_name": Schema.string(),
              "health_status": Schema.string(),
              "diagnosis": Schema.string(),
              "advice": Schema.string(),
            },
            requiredProperties: [
              "plant_name",
              "health_status",
              "diagnosis",
              "advice",
            ],
          ),
        ),
      );

      // 3. Generate Content
      final prompt = TextPart("""
You are a precise botanical diagnostic engine. Your only job is to analyze the provided image and output a raw JSON object.
Do not include markdown formatting (like ```json), conversational filler, or intro text.
Output Structure:
{
  "plant_name": "Common Name (Scientific Name)",
  "health_status": "Healthy" OR "Needs Attention" OR "Critical",
  "diagnosis": "A 3-word summary of the issue (e.g., 'Root Rot Detected' or 'Perfect Condition')",
  "advice": "Exactly one sentence under 20 words on how to fix it."
}

Rules:
1. If the image is NOT a plant, set "health_status" to "Error" and "advice" to "Please upload a clear photo of a plant."
2. Keep "advice" extremely actionable (e.g., "Water immediately and move to shade.").
3. Strictly adhere to the JSON format.
""");

      final imagePart = DataPart('image/jpeg', bytes);
      final response = await model.generateContent([
        Content.multi([prompt, imagePart]),
      ]);

      debugPrint("Gemini Response: ${response.text}");

      // 4. Parse Result
      Map<String, dynamic> diagnosisData;
      if (response.text != null) {
        // Clean potential markdown if SDK doesn't strip it
        final cleanText = response.text!
            .replaceAll('```json', '')
            .replaceAll('```', '')
            .trim();
        diagnosisData = jsonDecode(cleanText);
      } else {
        throw Exception("Empty response from AI");
      }

      // 5. Map to ScanResult
      return ScanResult(
        id: _uuid.v4(),
        // Use the resized image path
        imagePath: resizedImage.path,
        plantName: (diagnosisData['plant_name'] ?? 'Unknown Plant')
            .replaceAll(RegExp(r'\s*\([Nn]/?A\)', caseSensitive: false), '')
            .replaceAll(RegExp(r'\s*\(\s*\)'), '')
            .trim(),
        problem: diagnosisData['diagnosis'] ?? 'Unknown Issue',
        solution: diagnosisData['advice'] ?? 'No advice available.',
        timestamp: DateTime.now(),
        healthStatus: diagnosisData['health_status'] ?? 'Unknown',
        confidence: 0.8, // Confidence not provided in strict mode
      );
    } on SocketException {
      throw Exception("Network Error: Please check your internet connection.");
    } on GenerativeAIException catch (e) {
      debugPrint("Gemini API Error: ${e.message}");
      throw Exception(
        "API Error: Diagnosis service is currently unavailable. Please check your API key.",
      );
    } catch (e) {
      debugPrint("Analysis failed: $e");
      throw Exception("Failed to analyze image: $e");
    }
  }

  @visibleForTesting
  Future<File> resizeImage(String path) async {
    final imageFile = File(path);
    final bytes = await imageFile.readAsBytes();
    final img = decodeImage(bytes);

    if (img == null) throw Exception("Could not decode image");

    // Strictly resize to 512x512 for API token cost content
    if (img.width > 512 || img.height > 512) {
      final resized = copyResize(
        img,
        width: 512,
        height: 512,
        maintainAspect: true,
      );
      // Encode as JPG
      final resizedBytes = encodeJpg(resized, quality: 85);

      final lastIndex = path.lastIndexOf('.');
      String outPath = path;
      if (lastIndex != -1) {
        if (!path.endsWith('_resized.jpg')) {
          outPath = "${path.substring(0, lastIndex)}_resized.jpg";
        }
      } else {
        outPath = "${path}_resized.jpg";
      }

      final outFile = File(outPath);
      await outFile.writeAsBytes(resizedBytes);
      return outFile;
    }

    return imageFile; // Return original if dimensions are small enough
  }
}
