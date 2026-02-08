import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../home/home_screen.dart';
import '../../models/scan_result.dart';

import 'package:provider/provider.dart';
import '../../providers/garden_provider.dart';
import '../../services/notification_service.dart';

class DiagnosisScreen extends StatefulWidget {
  final ScanResult scanResult;
  final bool isHistoryMode;

  const DiagnosisScreen({
    super.key,
    required this.scanResult,
    this.isHistoryMode = false,
  });

  @override
  State<DiagnosisScreen> createState() => _DiagnosisScreenState();
}

class _DiagnosisScreenState extends State<DiagnosisScreen> {
  int _selectedFrequency = 2; // Default to every 2 days

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Background (Simulating "underneath" layer or blurred camera)
          Positioned.fill(
            child: widget.scanResult.imagePath.startsWith('http')
                ? CachedNetworkImage(
                    imageUrl: widget.scanResult.imagePath,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        Container(color: Colors.black12),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  )
                : Image.file(
                    File(widget.scanResult.imagePath),
                    fit: BoxFit.cover,
                  ),
          ),
          Positioned.fill(child: Container(color: Colors.black54)), // Dimmer
          // Bottom Sheet Content
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.85,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    offset: const Offset(0, -10),
                    color: Colors.black.withValues(alpha: 0.2),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 50),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Handle
                      Container(
                        width: 48,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.4),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Plant Image Circle with Pulse Effect (Simulated by border)
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 140,
                            height: 140,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 4),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 20,
                                  color: Colors.black.withValues(alpha: 0.2),
                                  offset: const Offset(0, 8),
                                ),
                              ],
                            ),
                            child: ClipOval(
                              child:
                                  widget.scanResult.imagePath.startsWith('http')
                                  ? CachedNetworkImage(
                                      imageUrl: widget.scanResult.imagePath,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.file(
                                      File(widget.scanResult.imagePath),
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 4,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Theme.of(
                                  context,
                                ).scaffoldBackgroundColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8,
                                    color: Colors.black.withValues(alpha: 0.1),
                                  ),
                                ],
                              ),
                              child: Icon(
                                _getSeverityIcon(
                                  widget.scanResult.healthStatus,
                                ),
                                color: _getSeverityColor(
                                  widget.scanResult.healthStatus,
                                ),
                                size: 32,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Title
                      Text(
                        widget.scanResult.plantName,
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.color,
                              letterSpacing: -0.5,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),

                      // Status Pill
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: _getSeverityColor(
                            widget.scanResult.healthStatus,
                          ).withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: _getSeverityColor(
                              widget.scanResult.healthStatus,
                            ).withValues(alpha: 0.3),
                            width: 1.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.medical_services_rounded,
                              color: _getSeverityColor(
                                widget.scanResult.healthStatus,
                              ),
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Flexible(
                              child: Text(
                                widget.scanResult.problem.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _getSeverityColor(
                                    widget.scanResult.healthStatus,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Diagnosis Card with "Health Bar" style confidence
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardTheme.color,
                          borderRadius: BorderRadius.circular(28),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: Colors.black.withValues(alpha: 0.08),
                              offset: const Offset(0, 5),
                            ),
                          ],
                          border: Border(
                            left: BorderSide(
                              color: _getSeverityColor(
                                widget.scanResult.healthStatus,
                              ),
                              width: 6,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: AppColors.primary.withValues(
                                          alpha: 0.15,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.auto_awesome,
                                        color: AppColors.primary,
                                        size: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      "DIAGNOSIS",
                                      style: TextStyle(
                                        color: AppColors.primary.withValues(
                                          alpha: 0.9,
                                        ),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        letterSpacing: 2.0,
                                      ),
                                    ),
                                  ],
                                ),
                                // Circular Confidence Indicator
                                Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          width: 44,
                                          height: 44,
                                          child: CircularProgressIndicator(
                                            value: widget.scanResult.confidence,
                                            strokeWidth: 4,
                                            backgroundColor: Colors.grey
                                                .withValues(alpha: 0.2),
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                  _getConfidenceColor(
                                                    widget
                                                        .scanResult
                                                        .confidence,
                                                  ),
                                                ),
                                            strokeCap: StrokeCap.round,
                                          ),
                                        ),
                                        Text(
                                          "${(widget.scanResult.confidence * 100).toInt()}%",
                                          style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "Confidence",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.color
                                            ?.withValues(alpha: 0.7),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Text(
                              widget.scanResult.solution,
                              style: Theme.of(context).textTheme.bodyLarge
                                  ?.copyWith(
                                    height: 1.6,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Watering Schedule (Only in "Add" mode)
                      if (!widget.isHistoryMode) ...[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.water_drop_rounded,
                                  color: Colors.blue[400],
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "Watering Schedule",
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Theme.of(
                                  context,
                                ).inputDecorationTheme.fillColor,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colors.grey.withValues(alpha: 0.2),
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<int>(
                                  value: _selectedFrequency,
                                  isExpanded: true,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: [
                                    DropdownMenuItem(
                                      value: 1,
                                      child: Text("Every day"),
                                    ),
                                    DropdownMenuItem(
                                      value: 2,
                                      child: Text("Every 2 days"),
                                    ),
                                    DropdownMenuItem(
                                      value: 3,
                                      child: Text("Every 3 days"),
                                    ),
                                    DropdownMenuItem(
                                      value: 5,
                                      child: Text("Every 5 days"),
                                    ),
                                    DropdownMenuItem(
                                      value: 7,
                                      child: Text("Every week"),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    if (value != null) {
                                      setState(() {
                                        _selectedFrequency = value;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "We'll remind you to water this plant.",
                              style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                      ],

                      // Actions
                      if (!widget.isHistoryMode) ...[
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () async {
                              // 1. Prepare Data
                              final now = DateTime.now();
                              final nextWatering = now.add(
                                Duration(days: _selectedFrequency),
                              );

                              final newPlant = ScanResult(
                                id: widget.scanResult.id,
                                imagePath: widget.scanResult.imagePath,
                                plantName: widget.scanResult.plantName,
                                problem: widget.scanResult.problem,
                                solution: widget.scanResult.solution,
                                timestamp: widget.scanResult.timestamp,
                                confidence: widget.scanResult.confidence,
                                wateringFrequency: _selectedFrequency,
                                nextWateringDate: nextWatering,
                                healthStatus: widget.scanResult.healthStatus,
                              );

                              // 2. Save to Garden
                              await Provider.of<GardenProvider>(
                                context,
                                listen: false,
                              ).addScan(newPlant);

                              // 3. Schedule Notification
                              await NotificationService().schedulePlantWatering(
                                newPlant.id,
                                newPlant.plantName,
                                nextWatering,
                              );

                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Added to My Garden"),
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                  (route) => false,
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              foregroundColor: Colors.white,
                              elevation: 8,
                              shadowColor: AppColors.primary.withValues(
                                alpha: 0.4,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add_circle_rounded),
                                SizedBox(width: 10),
                                Text(
                                  "Save to My Garden",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.grey,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                          ),
                          child: const Text(
                            "Discard Analysis",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ] else ...[
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: OutlinedButton(
                            onPressed: () => Navigator.pop(context),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Theme.of(context).dividerColor,
                                width: 1.5,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              "Close",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  IconData _getSeverityIcon(String status) {
    switch (status.toLowerCase()) {
      case 'healthy':
        return Icons.check_circle_rounded;
      case 'critical':
        return Icons.report_problem_rounded;
      case 'needs attention':
      default:
        return Icons.warning_amber_rounded;
    }
  }

  Color _getSeverityColor(String status) {
    switch (status.toLowerCase()) {
      case 'healthy':
        return Colors.green;
      case 'critical':
        return Colors.red;
      case 'needs attention':
      default:
        return AppColors.accent; // Orange/Warning
    }
  }

  Color _getConfidenceColor(double confidence) {
    if (confidence > 0.8) return Colors.green;
    if (confidence > 0.5) return AppColors.accent;
    return Colors.red;
  }
}
