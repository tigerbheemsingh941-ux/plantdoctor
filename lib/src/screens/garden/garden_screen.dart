import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../theme/app_theme.dart';
import '../../providers/garden_provider.dart';
import '../diagnosis/diagnosis_screen.dart';
import '../scanner/scanner_screen.dart';

class GardenScreen extends StatefulWidget {
  const GardenScreen({super.key});

  @override
  State<GardenScreen> createState() => _GardenScreenState();
}

class _GardenScreenState extends State<GardenScreen> {
  @override
  void initState() {
    super.initState();
    // Refresh scans when screen opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<GardenProvider>(context, listen: false).loadScans();
    });
  }

  Future<void> _handleDelete(String id) async {
    final gardenProvider = Provider.of<GardenProvider>(context, listen: false);
    await gardenProvider.deleteScan(id);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Plant removed from garden"),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Garden"),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
      ),
      body: Consumer<GardenProvider>(
        builder: (context, gardenProvider, child) {
          if (gardenProvider.isLoading && gardenProvider.scans.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          final scans = gardenProvider.scans;

          if (scans.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add_a_photo_outlined,
                      size: 48,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Add your first plant",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Snap a photo to identify and\ncare for your plants",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ScannerScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.camera_alt_rounded),
                    label: const Text("Scan Now"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: scans.length,
            itemBuilder: (context, index) {
              final scan = scans[index];
              return Dismissible(
                key: Key(scan.id),
                direction: DismissDirection.endToStart,
                confirmDismiss: (direction) async {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Remove Plant?"),
                        content: const Text(
                          "Are you sure you want to remove this plant from your garden?",
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.red,
                            ),
                            child: const Text("Remove"),
                          ),
                        ],
                      );
                    },
                  );
                },
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEF5350),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Delete",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.delete_outline, color: Colors.white),
                    ],
                  ),
                ),
                onDismissed: (_) => _handleDelete(scan.id),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DiagnosisScreen(
                            scanResult: scan,
                            isHistoryMode: true,
                          ),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          // Thumbnail
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: scan.imagePath.startsWith('http')
                                ? Image.network(
                                    scan.imagePath,
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Container(
                                              width: 80,
                                              height: 80,
                                              color: Colors.grey[300],
                                              child: const Icon(
                                                Icons.broken_image,
                                              ),
                                            ),
                                  )
                                : Image.file(
                                    File(scan.imagePath),
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Container(
                                              width: 80,
                                              height: 80,
                                              color: Colors.grey[300],
                                              child: const Icon(
                                                Icons.broken_image,
                                              ),
                                            ),
                                  ),
                          ),
                          const SizedBox(width: 16),

                          // Info
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  scan.plantName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(
                                      _getSeverityIcon(scan.problem),
                                      size: 14,
                                      color: _getSeverityColor(scan.problem),
                                    ),
                                    const SizedBox(width: 4),
                                    Flexible(
                                      child: Text(
                                        scan.problem,
                                        style: TextStyle(
                                          color: _getSeverityColor(
                                            scan.problem,
                                          ),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  _formatDate(scan.timestamp),
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12,
                                  ),
                                ),
                                if (scan.nextWateringDate != null) ...[
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.water_drop,
                                        size: 12,
                                        color: Colors.blue[400],
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        "Water: ${_formatDate(scan.nextWateringDate!)}",
                                        style: TextStyle(
                                          color: Colors.blue[400],
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ],
                            ),
                          ),

                          const Icon(Icons.chevron_right, color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  String _formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }

  IconData _getSeverityIcon(String problem) {
    if (problem.toLowerCase().contains('healthy')) return Icons.check_circle;
    return Icons.warning_amber_rounded;
  }

  Color _getSeverityColor(String problem) {
    if (problem.toLowerCase().contains('healthy')) return Colors.green;
    return AppColors.accent;
  }
}
