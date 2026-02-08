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
  int _selectedFrequency = 3; // Default to every 3 days
  int _selectedFertilizingFrequency = 14; // Default to every 14 days
  int _selectedPruningFrequency = 30; // Default to every 30 days
  int _selectedMistingFrequency = 1; // Default to every day

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
                boxShadow: AppShadows.glass,
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
                              boxShadow: AppShadows.floating,
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
                                boxShadow: AppShadows.card,
                              ),
                              child: Icon(
                                _getSeverityIcon(widget.scanResult.problem),
                                color: _getSeverityColor(
                                  widget.scanResult.problem,
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
                            widget.scanResult.problem,
                          ).withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: _getSeverityColor(
                              widget.scanResult.problem,
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
                                widget.scanResult.problem,
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
                                    widget.scanResult.problem,
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
                          boxShadow: AppShadows.card,
                          border: Border(
                            left: BorderSide(
                              color: _getSeverityColor(
                                widget.scanResult.problem,
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

                      // Care Reminders (Only in "Add" mode)
                      if (!widget.isHistoryMode) ...[
                        // Enhanced Section Header
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.primary.withValues(alpha: 0.1),
                                AppColors.primary.withValues(alpha: 0.05),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: AppColors.primary.withValues(alpha: 0.2),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.primary.withValues(
                                        alpha: 0.3,
                                      ),
                                      blurRadius: 8,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.notifications_active_rounded,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Care Reminders",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.3,
                                          ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      "Set reminders for plant care activities",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Theme.of(
                                          context,
                                        ).hintColor.withValues(alpha: 0.8),
                                        letterSpacing: 0.1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Compact Grid Layout for All Reminders
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardTheme.color,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.withValues(alpha: 0.15),
                            ),
                          ),
                          child: Column(
                            children: [
                              // Watering
                              _buildCompactReminder(
                                context,
                                icon: Icons.water_drop_rounded,
                                color: AppColors.primary,
                                label: "Watering",
                                value: _selectedFrequency,
                                items: [
                                  DropdownMenuItem(
                                    value: 0,
                                    child: Text("Off"),
                                  ),
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Text("Daily"),
                                  ),
                                  DropdownMenuItem(
                                    value: 2,
                                    child: Text("2 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: 3,
                                    child: Text("3 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: 5,
                                    child: Text("5 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: 7,
                                    child: Text("Weekly"),
                                  ),
                                ],
                                onChanged: (value) {
                                  if (value != null) {
                                    setState(() => _selectedFrequency = value);
                                  }
                                },
                              ),
                              const Divider(height: 24),

                              // Fertilizing
                              _buildCompactReminder(
                                context,
                                icon: Icons.eco_rounded,
                                color: AppColors.primary,
                                label: "Fertilizing",
                                value: _selectedFertilizingFrequency,
                                items: [
                                  DropdownMenuItem(
                                    value: 0,
                                    child: Text("Off"),
                                  ),
                                  DropdownMenuItem(
                                    value: 7,
                                    child: Text("7 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: 14,
                                    child: Text("14 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: 21,
                                    child: Text("21 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: 30,
                                    child: Text("30 days"),
                                  ),
                                ],
                                onChanged: (value) {
                                  if (value != null) {
                                    setState(
                                      () =>
                                          _selectedFertilizingFrequency = value,
                                    );
                                  }
                                },
                              ),
                              const Divider(height: 24),

                              // Pruning
                              _buildCompactReminder(
                                context,
                                icon: Icons.content_cut_rounded,
                                color: AppColors.primary,
                                label: "Pruning",
                                value: _selectedPruningFrequency,
                                items: [
                                  DropdownMenuItem(
                                    value: 0,
                                    child: Text("Off"),
                                  ),
                                  DropdownMenuItem(
                                    value: 14,
                                    child: Text("14 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: 30,
                                    child: Text("30 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: 60,
                                    child: Text("60 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: 90,
                                    child: Text("90 days"),
                                  ),
                                ],
                                onChanged: (value) {
                                  if (value != null) {
                                    setState(
                                      () => _selectedPruningFrequency = value,
                                    );
                                  }
                                },
                              ),
                              const Divider(height: 24),

                              // Misting
                              _buildCompactReminder(
                                context,
                                icon: Icons.shower_rounded,
                                color: AppColors.primary,
                                label: "Misting",
                                value: _selectedMistingFrequency,
                                items: [
                                  DropdownMenuItem(
                                    value: 0,
                                    child: Text("Off"),
                                  ),
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Text("Daily"),
                                  ),
                                  DropdownMenuItem(
                                    value: 2,
                                    child: Text("2 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: 3,
                                    child: Text("3 days"),
                                  ),
                                ],
                                onChanged: (value) {
                                  if (value != null) {
                                    setState(
                                      () => _selectedMistingFrequency = value,
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
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

                              // Schedule all reminders for 9:00 AM on their target days
                              final nextWatering = _selectedFrequency > 0
                                  ? DateTime(
                                      now.year,
                                      now.month,
                                      now.day + _selectedFrequency,
                                      9, // 9:00 AM
                                      0, // 0 minutes
                                    )
                                  : null;

                              final nextFertilizing =
                                  _selectedFertilizingFrequency > 0
                                  ? DateTime(
                                      now.year,
                                      now.month,
                                      now.day + _selectedFertilizingFrequency,
                                      9,
                                      0,
                                    )
                                  : null;

                              final nextPruning = _selectedPruningFrequency > 0
                                  ? DateTime(
                                      now.year,
                                      now.month,
                                      now.day + _selectedPruningFrequency,
                                      9,
                                      0,
                                    )
                                  : null;

                              final nextMisting = _selectedMistingFrequency > 0
                                  ? DateTime(
                                      now.year,
                                      now.month,
                                      now.day + _selectedMistingFrequency,
                                      9,
                                      0,
                                    )
                                  : null;

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
                                fertilizingFrequency:
                                    _selectedFertilizingFrequency,
                                nextFertilizingDate: nextFertilizing,
                                pruningFrequency: _selectedPruningFrequency,
                                nextPruningDate: nextPruning,
                                mistingFrequency: _selectedMistingFrequency,
                                nextMistingDate: nextMisting,
                              );

                              // 2. Save to Garden
                              await Provider.of<GardenProvider>(
                                context,
                                listen: false,
                              ).addScan(newPlant);

                              // 3. Schedule Notifications at 9:00 AM local time
                              final notificationService = NotificationService();

                              if (nextWatering != null) {
                                await notificationService.schedulePlantWatering(
                                  newPlant.id,
                                  newPlant.plantName,
                                  nextWatering,
                                );
                              }

                              if (nextFertilizing != null) {
                                await notificationService
                                    .schedulePlantFertilizing(
                                      newPlant.id,
                                      newPlant.plantName,
                                      nextFertilizing,
                                    );
                              }

                              if (nextPruning != null) {
                                await notificationService.schedulePlantPruning(
                                  newPlant.id,
                                  newPlant.plantName,
                                  nextPruning,
                                );
                              }

                              if (nextMisting != null) {
                                await notificationService.schedulePlantMisting(
                                  newPlant.id,
                                  newPlant.plantName,
                                  nextMisting,
                                );
                              }

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

  IconData _getSeverityIcon(String problem) {
    if (problem.toLowerCase().contains('healthy')) return Icons.check_circle;
    return Icons.warning_amber_rounded;
  }

  Color _getSeverityColor(String problem) {
    if (problem.toLowerCase().contains('healthy')) return Colors.green;
    if (problem.toLowerCase().contains('critical')) return Colors.red;
    return AppColors.accent; // Orange/Warning
  }

  Color _getConfidenceColor(double confidence) {
    if (confidence > 0.8) return Colors.green;
    if (confidence > 0.5) return AppColors.accent;
    return Colors.red;
  }

  Widget _buildCompactReminder(
    BuildContext context, {
    required IconData icon,
    required Color color,
    required String label,
    required int value,
    required List<DropdownMenuItem<int>> items,
    required ValueChanged<int?> onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          // Icon with gradient background
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.withValues(alpha: 0.2),
                  color.withValues(alpha: 0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withValues(alpha: 0.3), width: 1),
            ),
            child: Icon(icon, size: 20, color: color),
          ),
          const SizedBox(width: 14),
          // Label
          Expanded(
            flex: 5,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
              ),
            ),
          ),
          const SizedBox(width: 8),
          // Dropdown with enhanced styling
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[850]
                    : Colors.grey[100],
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: Colors.grey.withValues(alpha: 0.2),
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.03),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<int>(
                  value: value,
                  isExpanded: true,
                  isDense: true,
                  icon: Icon(Icons.arrow_drop_down, size: 24, color: color),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  ),
                  dropdownColor: Theme.of(context).brightness == Brightness.dark
                      ? Colors.grey[850]
                      : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  items: items,
                  onChanged: onChanged,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
