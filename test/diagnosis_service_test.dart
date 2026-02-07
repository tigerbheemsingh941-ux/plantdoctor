import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:image/image.dart' as img;
import 'package:plantdoctor/src/services/diagnosis_service.dart';

void main() {
  test('resizeImage reduces image larger than 512x512', () async {
    // 1. Create a large dummy image (1000x1000)
    final image = img.Image(width: 1000, height: 1000);
    // Fill with some color
    img.fill(image, color: img.ColorRgb8(255, 0, 0));

    // 2. Save to temp file
    final tempDir = Directory.systemTemp;
    final tempPath = '${tempDir.path}/test_image.jpg';
    final tempFile = File(tempPath);
    await tempFile.writeAsBytes(img.encodeJpg(image));

    // 3. Call service
    final service = DiagnosisService();
    final resizedFile = await service.resizeImage(tempPath);

    // 4. Verify
    final resizedBytes = await resizedFile.readAsBytes();
    final resizedImg = img.decodeImage(resizedBytes);

    expect(resizedImg, isNotNull);
    expect(resizedImg!.width, lessThanOrEqualTo(512));
    expect(resizedImg.height, lessThanOrEqualTo(512));

    // Clean up
    if (await tempFile.exists()) await tempFile.delete();
    if (await resizedFile.exists() && resizedFile.path != tempFile.path) {
      await resizedFile.delete();
    }
  });

  test('resizeImage does not change image smaller than 512x512', () async {
    // 1. Create a small dummy image (100x100)
    final image = img.Image(width: 100, height: 100);
    img.fill(image, color: img.ColorRgb8(0, 255, 0));

    // 2. Save to temp file
    final tempDir = Directory.systemTemp;
    final tempPath = '${tempDir.path}/test_small_image.jpg';
    final tempFile = File(tempPath);
    await tempFile.writeAsBytes(img.encodeJpg(image));

    // 3. Call service
    final service = DiagnosisService();
    final resizedFile = await service.resizeImage(tempPath);

    // 4. Verify
    final resizedBytes = await resizedFile.readAsBytes();
    final resizedImg = img.decodeImage(resizedBytes);

    expect(resizedImg, isNotNull);
    expect(resizedImg!.width, 100);
    expect(resizedImg.height, 100);

    // Cleanup
    if (await tempFile.exists()) await tempFile.delete();
  });
}
