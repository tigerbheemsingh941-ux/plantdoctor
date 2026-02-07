enum PlantStatus { healthy, thirsty, actionNeeded }

class Plant {
  final String name;
  final String scientificName;
  final String imagePath;
  final String description;
  final String waterFrequency;
  final String sunlight;
  final String temperature;
  final PlantStatus status;

  const Plant({
    required this.name,
    required this.scientificName,
    required this.imagePath,
    required this.description,
    required this.waterFrequency,
    required this.sunlight,
    required this.temperature,
    required this.status,
  });
}
