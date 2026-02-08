import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/scan_result.dart';

class GardenService {
  static const String _storageKey = 'garden_scans';

  Future<void> saveScan(ScanResult scan) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> scans = prefs.getStringList(_storageKey) ?? [];

    // 1. Get Persistent Directory
    final directory = await getApplicationDocumentsDirectory();
    final gardenDir = Directory('${directory.path}/garden_images');
    if (!await gardenDir.exists()) {
      await gardenDir.create(recursive: true);
    }

    // 2. Copy Image to Persistent Storage
    String persistentImagePath = scan.imagePath;
    try {
      final File originalImage = File(scan.imagePath);
      if (await originalImage.exists()) {
        final String newPath = '${gardenDir.path}/${scan.id}.jpg';
        await originalImage.copy(newPath);
        persistentImagePath = newPath;
      }
    } catch (e) {
      debugPrint("Error saving image to persistent storage: $e");
    }

    // 3. Update Scan with new path
    final persistentScan = ScanResult(
      id: scan.id,
      imagePath: persistentImagePath,
      plantName: scan.plantName,
      problem: scan.problem,
      solution: scan.solution,
      timestamp: scan.timestamp,
      confidence: scan.confidence,
      healthStatus: scan.healthStatus,
    );

    // 4. Save to Shared Preferences
    scans.add(jsonEncode(persistentScan.toMap()));
    await prefs.setStringList(_storageKey, scans);
  }

  Future<List<ScanResult>> getScans() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> scans = prefs.getStringList(_storageKey) ?? [];

    return scans.map((e) => ScanResult.fromMap(jsonDecode(e))).toList()
      ..sort((a, b) => b.timestamp.compareTo(a.timestamp)); // Newest first
  }

  Future<void> deleteScan(String id) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> scans = prefs.getStringList(_storageKey) ?? [];

    // Remove file from storage
    final scanJson = scans.firstWhere(
      (e) => jsonDecode(e)['id'] == id,
      orElse: () => '',
    );

    if (scanJson.isNotEmpty) {
      try {
        final map = jsonDecode(scanJson);
        final imagePath = map['imagePath'];
        if (imagePath != null) {
          final file = File(imagePath);
          if (await file.exists()) {
            await file.delete();
          }
        }
      } catch (e) {
        debugPrint("Error deleting image file: $e");
      }
    }

    scans.removeWhere((e) {
      final map = jsonDecode(e);
      return map['id'] == id;
    });

    await prefs.setStringList(_storageKey, scans);
  }
}
