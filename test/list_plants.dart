// ignore_for_file: avoid_print
import 'dart:io';

void main() {
  final file = File('lib/src/data/plant_data.dart');
  final lines = file.readAsLinesSync();
  int count = 0;
  for (var line in lines) {
    if (line.trim().startsWith('"name":')) {
      print(line.trim());
      count++;
    }
  }
  print('Total plants: $count');
}
