import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:image/image.dart';

import '../models/scan_result.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DiagnosisService {
  final _uuid = const Uuid();

  // API Endpoint not needed for SDK
  String get _apiKey => dotenv.env['GEMINI_API_KEY'] ?? '';

  Future<ScanResult> analyzeImage(String imagePath) async {
    try {
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
              "health_status": Schema.string(
                description: "Healthy, Needs Attention, Critical, or Error",
              ),
              "diagnosis": Schema.string(
                description: "A 3-word summary of the issue",
              ),
              "advice": Schema.string(
                description:
                    "Exactly one sentence under 20 words on how to fix it.",
              ),
              "confidence": Schema.number(
                description: "Confidence score between 0.0 and 1.0",
              ),
            },
            requiredProperties: [
              "plant_name",
              "health_status",
              "diagnosis",
              "advice",
              "confidence",
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
  "advice": "Exactly one sentence under 20 words on how to fix it.",
  "confidence": 0.95 (A float between 0.0 and 1.0 indicating certainty)
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
      String problem = diagnosisData['diagnosis'] ?? 'Unknown Issue';
      String healthStatus = diagnosisData['health_status'] ?? 'Unknown';

      // Alignment Logic
      if (healthStatus.toLowerCase() == 'healthy') {
        problem = 'Healthy';
      } else if (healthStatus.toLowerCase() == 'critical') {
        if (!problem.toLowerCase().contains('critical')) {
          problem = "Critical: $problem";
        }
      }

      return ScanResult(
        id: _uuid.v4(),
        // Use the resized image path which we know is a valid standard JPG
        imagePath: resizedImage.path,
        plantName: (diagnosisData['plant_name'] ?? 'Unknown Plant')
            .replaceAll(RegExp(r'\s*\([Nn]/?A\)', caseSensitive: false), '')
            .replaceAll(RegExp(r'\s*\(\s*\)'), '')
            .trim(),
        problem: problem,
        solution: diagnosisData['advice'] ?? 'No advice available.',
        timestamp: DateTime.now(),
        confidence: (diagnosisData['confidence'] is num)
            ? (diagnosisData['confidence'] as num).toDouble()
            : 0.95,
      );
    } catch (e) {
      debugPrint("Analysis failed: $e");
      return ScanResult(
        id: _uuid.v4(),
        imagePath: imagePath,
        plantName: "Error",
        problem: "Could not analyze",
        solution:
            "Please check your internet connection and try again. (Error: $e)",
        timestamp: DateTime.now(),
        confidence: 0.0,
      );
    }
  }

  @visibleForTesting
  Future<File> resizeImage(String path) async {
    final imageFile = File(path);
    final bytes = await imageFile.readAsBytes();
    final img = decodeImage(bytes);

    if (img == null) throw Exception("Could not decode image");

    // Resize to max 512x512 if larger
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
      // Avoid accumulating _out_out_out.jpg if re-running on same file
      String outPath = path;
      if (lastIndex != -1) {
        outPath = "${path.substring(0, lastIndex)}_resized.jpg";
      } else {
        outPath = "${path}_resized.jpg";
      }

      final outFile = File(outPath);
      await outFile.writeAsBytes(resizedBytes);
      return outFile;
    }

    return imageFile; // Return original if small enough
  }
}
