import 'package:flutter/material.dart';
import '../../../services/weather_service.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  final WeatherService _weatherService = WeatherService();
  int? _temperature;
  int _weatherCode = 0;
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

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(strokeWidth: 2),
      );
    }

    return Container(
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
          const SizedBox(width: 6),
          Text(
            _temperature != null ? "$_temperature°C" : "--",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        ],
      ),
    );
  }
}
