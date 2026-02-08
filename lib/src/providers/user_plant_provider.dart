import 'package:flutter/foundation.dart';
import '../data/plant_repository.dart';

class UserPlantProvider extends ChangeNotifier {
  final PlantRepository _plantRepository = PlantRepository();
  List<Map<String, dynamic>> _userPlants = [];
  bool _isLoading = false;

  List<Map<String, dynamic>> get userPlants => _userPlants;
  bool get isLoading => _isLoading;
  int get count => _userPlants.length;

  UserPlantProvider() {
    loadPlants();
  }

  Future<void> loadPlants() async {
    _isLoading = true;
    notifyListeners();

    try {
      _userPlants = await _plantRepository.loadUserPlants();
    } catch (e) {
      debugPrint("Error loading user plants: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addPlant(Map<String, dynamic> plant) async {
    try {
      await _plantRepository.saveUserPlant(plant);
      await loadPlants(); // Reload to update list
    } catch (e) {
      debugPrint("Error adding plant: $e");
      rethrow;
    }
  }
}
