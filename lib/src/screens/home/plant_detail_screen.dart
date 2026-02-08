import 'package:flutter/material.dart';

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
        title: const Text("Plant Detail"),
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
            const SizedBox(height: 10),
            // Rounded Floating Image Card with Name Overlay
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Hero(
                        tag: 'plant-image-${widget.plant['name']}',
                        child: Image.network(
                          widget.plant['image'] ?? '',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                                color: Colors.grey[300],
                                child: const Icon(
                                  Icons.broken_image,
                                  color: Colors.grey,
                                  size: 40,
                                ),
                              ),
                        ),
                      ),
                      // Dark Gradient for Text Visibility
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withValues(alpha: 0.5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Name Overlay
                      Positioned(
                        bottom: 20,
                        left: 20,
                        right: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.plant['name'] ?? '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.4,
                              ),
                            ),
                            if (widget.plant['scientific'] != null)
                              Text(
                                widget.plant['scientific'],
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: 0.95),
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            if (details != null) ...[
              const SizedBox(height: 20),
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
                  categoryColor: Colors.amber,
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
                  categoryColor: Colors.blue,
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
                  categoryColor: Colors.brown,
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
                  categoryColor: Colors.purple,
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
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.amber.shade200),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => _toggleSection("Warning"),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.amber.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.error_outline_rounded,
                        color: Colors.amber[800],
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Warning",
                            style: TextStyle(
                              color: Colors.amber[900],
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (!isExpanded) ...[
                            const SizedBox(height: 2),
                            Text(
                              warning,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.amber[900],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.amber[800],
                      size: 20,
                    ),
                  ],
                ),
                if (isExpanded) ...[
                  const SizedBox(height: 10),
                  Text(
                    warning,
                    style: TextStyle(
                      color: Colors.amber[900],
                      fontSize: 13,
                      height: 1.4,
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
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).dividerColor.withValues(alpha: 0.05),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => _toggleSection("Common Issues"),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.teal.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.pest_control_rounded,
                        color: Colors.teal,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        "Common Issues",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.2,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ),
                    Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.4),
                      size: 20,
                    ),
                  ],
                ),
              ),
              if (isExpanded) ...[
                Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  color: Colors.teal.withValues(alpha: 0.1),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).scaffoldBackgroundColor.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(12),
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
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
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
          height: 1.4,
          fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
          color: Theme.of(
            context,
          ).colorScheme.onSurface.withValues(alpha: isBold ? 1.0 : 0.95),
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
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
        border: Border.all(
          color: Theme.of(context).dividerColor.withValues(alpha: 0.05),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => _toggleSection(title),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: effectiveColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(icon, color: effectiveColor, size: 20),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.2,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ),
                      Icon(
                        isExpanded ? Icons.expand_less : Icons.expand_more,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.4),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                if (isExpanded) ...[
                  Container(
                    height: 1,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    color: effectiveColor.withValues(alpha: 0.1),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: items.map((item) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: effectiveColor.withValues(
                                      alpha: 0.7,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    fontSize: 14,
                                    height: 1.5,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.95),
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
