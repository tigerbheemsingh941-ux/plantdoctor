import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class WeatherService {
  Future<Map<String, dynamic>> fetchCurrentWeather() async {
    try {
      final position = await _determinePosition();

      // Get location name
      String locationName = "Unknown Location";
      try {
        List<Placemark> placemarks = await placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        );
        if (placemarks.isNotEmpty) {
          locationName =
              placemarks.first.locality ??
              placemarks.first.subAdministrativeArea ??
              "Unknown Location";
        }
      } catch (e) {
        debugPrint("Error getting placemark: $e");
      }

      final url = Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=${position.latitude}&longitude=${position.longitude}&current=temperature_2m,relative_humidity_2m,weather_code,wind_speed_10m&daily=temperature_2m_max,temperature_2m_min&timezone=auto',
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final current = data['current'];
        final daily = data['daily'];

        return {
          'temp': current['temperature_2m'].round(),
          'code': current['weather_code'],
          'humidity': current['relative_humidity_2m'],
          'windSpeed': current['wind_speed_10m'],
          'maxTemp': daily['temperature_2m_max'][0].round(),
          'minTemp': daily['temperature_2m_min'][0].round(),
          'location': locationName,
        };
      } else {
        throw Exception('Failed to load weather');
      }
    } catch (e) {
      debugPrint("Weather Error: $e");
      return {
        'temp': '--',
        'code': 0,
        'humidity': '--',
        'windSpeed': '--',
        'maxTemp': '--',
        'minTemp': '--',
        'location': 'Location Error',
      };
    }
  }

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}
