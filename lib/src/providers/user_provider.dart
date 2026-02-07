import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProvider extends ChangeNotifier {
  String _name = "Jane Evergreen";
  String _username = "jane_plants";
  String _email = "jane.ever@botany.app";
  String? _imagePath;

  String get name => _name;
  String get username => _username;
  String get email => _email;
  String? get imagePath => _imagePath;

  UserProvider() {
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    _name = prefs.getString('user_name') ?? "Jane Evergreen";
    _username = prefs.getString('user_username') ?? "jane_plants";
    _email = prefs.getString('user_email') ?? "jane.ever@botany.app";
    _imagePath = prefs.getString('user_image_path');
    notifyListeners();
  }

  Future<void> updateProfile({
    String? name,
    String? username,
    String? email,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    if (name != null) {
      _name = name;
      await prefs.setString('user_name', name);
    }
    if (username != null) {
      _username = username;
      await prefs.setString('user_username', username);
    }
    if (email != null) {
      _email = email;
      await prefs.setString('user_email', email);
    }
    notifyListeners();
  }

  Future<void> updateImage(String path) async {
    debugPrint("UserProvider.updateImage: $path");
    try {
      final File imageFile = File(path);
      final directory = await getApplicationDocumentsDirectory();
      final String newPath =
          '${directory.path}/profile_image_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final File newImage = await imageFile.copy(newPath);

      _imagePath = newImage.path;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('user_image_path', _imagePath!);
      debugPrint("UserProvider.updateImage: Saved to prefs at $_imagePath");
      notifyListeners();
    } catch (e) {
      debugPrint("Error saving image: $e");
    }
  }
}
