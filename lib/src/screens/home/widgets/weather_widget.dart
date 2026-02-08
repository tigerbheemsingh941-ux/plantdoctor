import 'package:flutter/material.dart';
import '../../../services/weather_service.dart';
import '../../../theme/app_theme.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  final WeatherService _weatherService = WeatherService();
  int? _temperature;
  int _weatherCode = 0;
  String? _locationName;
  dynamic _humidity;
  dynamic _windSpeed;
  dynamic _maxTemp;
  dynamic _minTemp;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadWeather();
  }

  Future<void> _loadWeather() async {
    final data = await _weatherService.fetchCurrentWeather();
    if (mounted) {
      setState(() {
        if (data['temp'] is int) {
          _temperature = data['temp'];
        } else if (data['temp'] == '--') {
          _temperature = null;
        }
        _weatherCode = data['code'];
        _locationName = data['location'];
        _humidity = data['humidity'];
        _windSpeed = data['windSpeed'];
        _maxTemp = data['maxTemp'];
        _minTemp = data['minTemp'];
        _isLoading = false;
      });
    }
  }

  IconData _getWeatherIcon(int code) {
    // WMO Weather interpretation codes (WW)
    // 0: Clear sky
    if (code == 0) return Icons.wb_sunny_rounded;
    // 1, 2, 3: Mainly clear, partly cloudy, and overcast
    if (code <= 3) return Icons.cloud_queue_rounded;
    // 45, 48: Fog
    if (code == 45 || code == 48) return Icons.foggy;
    // 51, 53, 55: Drizzle
    if (code >= 51 && code <= 55) return Icons.grain_rounded;
    // 61, 63, 65: Rain
    if (code >= 61 && code <= 67) return Icons.cloudy_snowing; // Rain icon
    // 71, 73, 75: Snow fall
    if (code >= 71 && code <= 77) return Icons.ac_unit_rounded;
    // 80, 81, 82: Rain showers
    if (code >= 80 && code <= 82) return Icons.umbrella_rounded;
    // 95, 96, 99: Thunderstorm
    if (code >= 95) return Icons.thunderstorm_rounded;

    return Icons.wb_sunny_rounded;
  }

  String _getWeatherCondition(int code) {
    if (code == 0) return "Clear Sky";
    if (code == 1) return "Mainly Clear";
    if (code == 2) return "Partly Cloudy";
    if (code == 3) return "Overcast";
    if (code == 45 || code == 48) return "Foggy";
    if (code >= 51 && code <= 55) return "Drizzle";
    if (code >= 61 && code <= 67) return "Rain";
    if (code >= 71 && code <= 77) return "Snow";
    if (code >= 80 && code <= 82) return "Showers";
    if (code >= 95) return "Thunderstorm";
    return "Unknown";
  }

  void _showWeatherDetails() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Handle bar
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            // Location
            Text(
              _locationName ?? "Unknown Location",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Main Weather Info
            Icon(
              _getWeatherIcon(_weatherCode),
              size: 64,
              color: AppColors.primary,
            ),
            const SizedBox(height: 8),
            Text(
              "${_temperature ?? '--'}°",
              style: Theme.of(
                context,
              ).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              _getWeatherCondition(_weatherCode),
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 32),

            // Details Grid
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildDetailItem(
                  Icons.water_drop_rounded,
                  "${_humidity ?? '--'}%",
                  "Humidity",
                ),
                _buildDetailItem(
                  Icons.air_rounded,
                  "${_windSpeed ?? '--'} km/h",
                  "Wind",
                ),
                _buildDetailItem(
                  Icons.thermostat_rounded,
                  "${_maxTemp ?? '--'}° / ${_minTemp ?? '--'}°",
                  "High/Low",
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(IconData icon, String value, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: AppColors.primary, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(strokeWidth: 2),
      );
    }

    return GestureDetector(
      onTap: _showWeatherDetails,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              _getWeatherIcon(_weatherCode),
              size: 18,
              color: Colors.orangeAccent,
            ),
            const SizedBox(width: 8),
            Text(
              _temperature != null ? "$_temperature°" : "--",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
            // Location name removed from home page display as per user request
          ],
        ),
      ),
    );
  }
}
