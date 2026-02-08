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
    );
  }
}
