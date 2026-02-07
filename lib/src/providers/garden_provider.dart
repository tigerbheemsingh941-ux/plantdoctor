import 'package:flutter/foundation.dart';
import '../models/scan_result.dart';
import '../services/garden_service.dart';

class GardenProvider extends ChangeNotifier {
  final GardenService _gardenService = GardenService();
  List<ScanResult> _scans = [];
  bool _isLoading = false;

  List<ScanResult> get scans => _scans;
  bool get isLoading => _isLoading;

  GardenProvider() {
    loadScans();
  }

  Future<void> loadScans() async {
    _isLoading = true;
    notifyListeners();

    try {
      _scans = await _gardenService.getScans();
    } catch (e) {
      debugPrint("Error loading garden scans: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addScan(ScanResult scan) async {
    try {
      await _gardenService.saveScan(scan);
      // Reload to get the updated list with the persisted image path
      await loadScans();
    } catch (e) {
      debugPrint("Error adding scan: $e");
    }
  }

  Future<void> deleteScan(String id) async {
    try {
      await _gardenService.deleteScan(id);
      _scans.removeWhere((scan) => scan.id == id);
      notifyListeners();
    } catch (e) {
      debugPrint("Error deleting scan: $e");
    }
  }
}
