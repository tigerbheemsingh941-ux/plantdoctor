import 'dart:io';
import 'package:image/image.dart' as img;

void main() async {
  stdout.writeln('Starting image compression...\n');

  // Define directories
  final assetsDir = Directory('assets');
  final optimizedDir = Directory('assets/optimized');

  // Create optimized directory if it doesn't exist
  if (!await optimizedDir.exists()) {
    await optimizedDir.create(recursive: true);
    stdout.writeln('Created assets/optimized directory');
  }

  // Get all PNG files in assets directory (not subdirectories)
  final imageFiles = assetsDir
      .listSync()
      .where(
        (entity) =>
            entity is File && entity.path.toLowerCase().endsWith('.png'),
      )
      .cast<File>()
      .toList();

  stdout.writeln('Found ${imageFiles.length} PNG images to compress\n');

  for (final file in imageFiles) {
    await compressImage(file, optimizedDir);
  }

  stdout.writeln('\n✓ Image compression complete!');
  stdout.writeln('Optimized images saved to: assets/optimized/');
}

Future<void> compressImage(File sourceFile, Directory targetDir) async {
  final fileName = sourceFile.uri.pathSegments.last;
  final targetFile = File('${targetDir.path}/$fileName');

  stdout.writeln('Processing: $fileName');

  try {
    // Read the source image
    final bytes = await sourceFile.readAsBytes();
    final image = img.decodeImage(bytes);

    if (image == null) {
      stdout.writeln('  ✗ Failed to decode image');
      return;
    }

    // Compress as PNG with optimization
    // Using PNG level 9 for maximum compression while maintaining quality
    final compressedBytes = img.encodePng(image, level: 9);

    // Write compressed image
    await targetFile.writeAsBytes(compressedBytes);

    // Calculate size reduction
    final originalSize = bytes.length;
    final compressedSize = compressedBytes.length;
    final reduction = ((originalSize - compressedSize) / originalSize * 100);
    final savedKB = (originalSize - compressedSize) / 1024;

    stdout.writeln(
      '  Original:   ${(originalSize / 1024).toStringAsFixed(2)} KB',
    );
    stdout.writeln(
      '  Compressed: ${(compressedSize / 1024).toStringAsFixed(2)} KB',
    );
    stdout.writeln(
      '  Saved:      ${savedKB.toStringAsFixed(2)} KB (${reduction.toStringAsFixed(1)}%)',
    );
    stdout.writeln('  ✓ Saved to: assets/optimized/$fileName\n');
  } catch (e) {
    stdout.writeln('  ✗ Error: $e\n');
  }
}
