class ScanResult {
  final String id;
  final String imagePath;
  final String plantName;
  final String problem;
  final String solution;
  final DateTime timestamp;
  final double confidence;
  final int wateringFrequency; // In days. 0 = no reminder
  final DateTime? nextWateringDate;
  final int fertilizingFrequency; // In days. 0 = no reminder
  final DateTime? nextFertilizingDate;
  final int pruningFrequency; // In days. 0 = no reminder
  final DateTime? nextPruningDate;
  final int mistingFrequency; // In days. 0 = no reminder
  final DateTime? nextMistingDate;

  ScanResult({
    required this.id,
    required this.imagePath,
    required this.plantName,
    required this.problem,
    required this.solution,
    required this.timestamp,
    this.confidence = 0.0,
    this.wateringFrequency = 0,
    this.nextWateringDate,
    this.fertilizingFrequency = 0,
    this.nextFertilizingDate,
    this.pruningFrequency = 0,
    this.nextPruningDate,
    this.mistingFrequency = 0,
    this.nextMistingDate,
  });

  // Convert to Map for storage
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'imagePath': imagePath,
      'plantName': plantName,
      'problem': problem,
      'solution': solution,
      'timestamp': timestamp.toIso8601String(),
      'confidence': confidence,
      'wateringFrequency': wateringFrequency,
      'nextWateringDate': nextWateringDate?.toIso8601String(),
      'fertilizingFrequency': fertilizingFrequency,
      'nextFertilizingDate': nextFertilizingDate?.toIso8601String(),
      'pruningFrequency': pruningFrequency,
      'nextPruningDate': nextPruningDate?.toIso8601String(),
      'mistingFrequency': mistingFrequency,
      'nextMistingDate': nextMistingDate?.toIso8601String(),
    };
  }

  // Create from Map
  factory ScanResult.fromMap(Map<String, dynamic> map) {
    return ScanResult(
      id: map['id'],
      imagePath: map['imagePath'],
      plantName: map['plantName'],
      problem: map['problem'],
      solution: map['solution'],
      timestamp: DateTime.parse(map['timestamp']),
      confidence: map['confidence'] ?? 0.0,
      wateringFrequency: map['wateringFrequency'] ?? 0,
      nextWateringDate: map['nextWateringDate'] != null
          ? DateTime.parse(map['nextWateringDate'])
          : null,
      fertilizingFrequency: map['fertilizingFrequency'] ?? 0,
      nextFertilizingDate: map['nextFertilizingDate'] != null
          ? DateTime.parse(map['nextFertilizingDate'])
          : null,
      pruningFrequency: map['pruningFrequency'] ?? 0,
      nextPruningDate: map['nextPruningDate'] != null
          ? DateTime.parse(map['nextPruningDate'])
          : null,
      mistingFrequency: map['mistingFrequency'] ?? 0,
      nextMistingDate: map['nextMistingDate'] != null
          ? DateTime.parse(map['nextMistingDate'])
          : null,
    );
  }
}
