import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/plant.dart';

class PlantRepository {
  static const String _userPlantsKey = 'user_plants';

  Future<List<Map<String, dynamic>>> loadUserPlants() async {
    final prefs = await SharedPreferences.getInstance();
    final String? plantsJson = prefs.getString(_userPlantsKey);

    if (plantsJson == null) {
      return [];
    }

    try {
      final List<dynamic> decoded = jsonDecode(plantsJson);
      return decoded.cast<Map<String, dynamic>>().map((plant) {
        if (plant['status'] is int) {
          plant['status'] = PlantStatus.values[plant['status'] as int];
        }
        return plant;
      }).toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> saveUserPlant(Map<String, dynamic> plant) async {
    final prefs = await SharedPreferences.getInstance();
    List<Map<String, dynamic>> currentPlants = await _loadRawUserPlants();

    final Map<String, dynamic> plantToSave = Map.from(plant);

    // Status enum handling for storage
    if (plantToSave['status'] is PlantStatus) {
      plantToSave['status'] = (plantToSave['status'] as PlantStatus).index;
    }

    currentPlants.insert(0, plantToSave); // Add to beginning

    await prefs.setString(_userPlantsKey, jsonEncode(currentPlants));
  }

  Future<List<Map<String, dynamic>>> _loadRawUserPlants() async {
    final prefs = await SharedPreferences.getInstance();
    final String? plantsJson = prefs.getString(_userPlantsKey);

    if (plantsJson == null) {
      return [];
    }

    try {
      final List<dynamic> decoded = jsonDecode(plantsJson);
      return decoded.cast<Map<String, dynamic>>();
    } catch (e) {
      return [];
    }
  }
}
