import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../theme/app_theme.dart';

class PlantDetailScreen extends StatefulWidget {
  final Map<String, dynamic> plant;

  const PlantDetailScreen({super.key, required this.plant});

  @override
  State<PlantDetailScreen> createState() => _PlantDetailScreenState();
}

class _PlantDetailScreenState extends State<PlantDetailScreen> {
  final Map<String, bool> _expandedSections = {};

  void _toggleSection(String title) {
    setState(() {
      _expandedSections[title] = !(_expandedSections[title] ?? false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final details = widget.plant['details'] as Map<String, dynamic>?;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              widget.plant['name'] ?? 'Plant Detail',
              style: GoogleFonts.mPlusRounded1c(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            if (widget.plant['scientific'] != null)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  widget.plant['scientific'],
                  style: GoogleFonts.mPlusRounded1c(
                    fontSize: 13,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.55),
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (widget.plant['description'] != null)
              Container(
                margin: const EdgeInsets.fromLTRB(20, 12, 20, 16),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.04),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.primary.withValues(alpha: 0.08),
                    width: 1,
                  ),
                ),
                child: Text(
                  widget.plant['description'],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.mPlusRounded1c(
                    fontSize: 14.5,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.75),
                    height: 1.7,
                    letterSpacing: 0.15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            const SizedBox(height: 8),

            if (details != null) ...[
              // Light Section
              if (_hasAny(details, ['light_ideal', 'light_low', 'light_avoid']))
                _buildSection(
                  context,
                  "Light Requirements",
                  Icons.wb_sunny_rounded,
                  [
                    if (details['light_ideal'] != null) details['light_ideal'],
                    if (details['light_low'] != null) details['light_low'],
                    if (details['light_avoid'] != null) details['light_avoid'],
                  ],
                  categoryColor: AppColors.primary,
                ),

              // Water Section
              if (_hasAny(details, [
                'water_step1',
                'water_step2',
                'water_step3',
                'water_frequency',
              ]))
                _buildSection(
                  context,
                  "Watering Strategy",
                  Icons.water_drop_rounded,
                  [
                    if (details['water_step1'] != null) details['water_step1'],
                    if (details['water_step2'] != null) details['water_step2'],
                    if (details['water_step3'] != null) details['water_step3'],
                    if (details['water_frequency'] != null)
                      details['water_frequency'],
                  ],
                  categoryColor: AppColors.primary,
                ),

              // Soil Section
              if (_hasAny(details, ['soil_type', 'pot_type']))
                _buildSection(
                  context,
                  "Soil & Potting",
                  Icons.spa_rounded,
                  [
                    if (details['soil_type'] != null) details['soil_type'],
                    if (details['pot_type'] != null) details['pot_type'],
                  ],
                  categoryColor: AppColors.primary,
                ),

              // Maintenance
              if (_hasAny(details, [
                'maintenance_cleaning',
                'maintenance_support',
                'maintenance_pruning',
              ]))
                _buildSection(
                  context,
                  "Maintenance",
                  Icons.content_cut_rounded,
                  [
                    if (details['maintenance_cleaning'] != null)
                      details['maintenance_cleaning'],
                    if (details['maintenance_support'] != null)
                      details['maintenance_support'],
                    if (details['maintenance_pruning'] != null)
                      details['maintenance_pruning'],
                  ],
                  categoryColor: AppColors.primary,
                ),

              // Common Issues Section (Structured Table)
              if (details['troubleshooting'] != null &&
                  details['troubleshooting'].toString().isNotEmpty)
                _buildCommonIssuesSection(
                  context,
                  details['troubleshooting'].toString(),
                ),

              // Warning Note
              if (details['warning_note'] != null &&
                  details['warning_note'].toString().isNotEmpty)
                _buildWarningBox(details['warning_note']),
            ],

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  bool _hasAny(Map<String, dynamic> data, List<String> keys) {
    for (var key in keys) {
      if (data[key] != null && data[key].toString().isNotEmpty) {
        return true;
      }
    }
    return false;
  }

  Widget _buildWarningBox(String warning) {
    final isExpanded = _expandedSections["Warning"] ?? false;

    return Container(
      margin: const EdgeInsets.fromLTRB(20, 8, 20, 24),
      decoration: BoxDecoration(
        color: Colors.amber.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.amber.withValues(alpha: 0.3)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => _toggleSection("Warning"),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.amber.withValues(alpha: 0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.warning_amber_rounded,
                        color: Colors.amberAccent,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Warning",
                            style: TextStyle(
                              color: Colors.amberAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (!isExpanded) ...[
                            const SizedBox(height: 4),
                            Text(
                              warning,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.amberAccent.withValues(
                                  alpha: 0.9,
                                ),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.amberAccent,
                      size: 24,
                    ),
                  ],
                ),
                if (isExpanded) ...[
                  const SizedBox(height: 12),
                  Text(
                    warning,
                    style: TextStyle(
                      color: Colors.amberAccent.withValues(alpha: 0.95),
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCommonIssuesSection(BuildContext context, String data) {
    final issues = _parseTroubleshootingData(data);
    final isExpanded = _expandedSections["Common Issues"] ?? false;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Theme.of(context).dividerColor.withValues(alpha: 0.08),
        ),
        boxShadow: AppShadows.card,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () => _toggleSection("Common Issues"),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(
                        Icons.pest_control_rounded,
                        color: AppColors.primary,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        "Common Issues",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.3,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ),
                    Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.5),
                      size: 24,
                    ),
                  ],
                ),
              ),
              if (isExpanded) ...[
                Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: AppColors.primary.withValues(alpha: 0.15),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).scaffoldBackgroundColor.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: AppColors.primary.withValues(alpha: 0.1),
                      ),
                    ),
                    child: Table(
                      columnWidths: const {
                        0: FlexColumnWidth(1.2), // Issue
                        1: FlexColumnWidth(1.5), // Cause
                        2: FlexColumnWidth(2), // Solution
                      },
                      children: [
                        TableRow(
                          children: [
                            _buildHeaderCell(context, "Issue"),
                            _buildHeaderCell(context, "Cause"),
                            _buildHeaderCell(context, "Solution"),
                          ],
                        ),
                        ...issues.map(
                          (issue) => TableRow(
                            children: [
                              _buildContentCell(
                                context,
                                issue['issue'] ?? '',
                                isBold: true,
                              ),
                              _buildContentCell(context, issue['cause'] ?? ''),
                              _buildContentCell(
                                context,
                                issue['solution'] ?? '',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderCell(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.9),
        ),
      ),
    );
  }

  Widget _buildContentCell(
    BuildContext context,
    String text, {
    bool isBold = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          height: 1.5,
          fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
          color: Theme.of(
            context,
          ).colorScheme.onSurface.withValues(alpha: isBold ? 1.0 : 0.8),
        ),
      ),
    );
  }

  List<Map<String, String>> _parseTroubleshootingData(String data) {
    final List<Map<String, String>> result = [];
    final lines = data.split('\n');

    for (var line in lines) {
      if (line.trim().isEmpty) continue;

      try {
        final parts = line.split(':');
        if (parts.length < 2) continue;

        final issue = parts[0].trim();
        final remainder = parts[1].trim();

        final openParen = remainder.indexOf('(');
        final closeParen = remainder.lastIndexOf(')');

        String cause = remainder;
        String solution = "";

        if (openParen != -1 && closeParen != -1) {
          cause = remainder.substring(0, openParen).trim();
          solution = remainder.substring(openParen + 1, closeParen).trim();
        }

        result.add({'issue': issue, 'cause': cause, 'solution': solution});
      } catch (e) {
        result.add({'issue': line, 'cause': '', 'solution': ''});
      }
    }
    return result;
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    IconData icon,
    List<String> items, {
    Color? categoryColor,
  }) {
    final effectiveColor = categoryColor ?? Theme.of(context).primaryColor;
    final isExpanded = _expandedSections[title] ?? false;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(24),
        boxShadow: AppShadows.card,
        border: Border.all(
          color: Theme.of(context).dividerColor.withValues(alpha: 0.08),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => _toggleSection(title),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: effectiveColor.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Icon(icon, color: effectiveColor, size: 24),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.3,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ),
                      Icon(
                        isExpanded ? Icons.expand_less : Icons.expand_more,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.5),
                        size: 24,
                      ),
                    ],
                  ),
                ),
                if (isExpanded) ...[
                  Container(
                    height: 1,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    color: effectiveColor.withValues(alpha: 0.15),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: items.map((item) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 9),
                                child: Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: effectiveColor.withValues(
                                      alpha: 0.8,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.6,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.9),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
