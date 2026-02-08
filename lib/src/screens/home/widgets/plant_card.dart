import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../models/plant.dart';

class PlantCard extends StatelessWidget {
  final String name;
  final String scientificName;
  final String imageUrl;
  final PlantStatus status;

  final VoidCallback? onTap;

  const PlantCard({
    super.key,
    required this.name,
    required this.scientificName,
    required this.imageUrl,
    required this.status,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Card with Status
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
                image: DecorationImage(
                  image: imageUrl.startsWith('http')
                      ? CachedNetworkImageProvider(imageUrl)
                      : FileImage(File(imageUrl)) as ImageProvider,
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  // Gradient Overlay (subtle, just for chip contrast if needed)
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.0),
                            Colors.black.withValues(alpha: 0.4),
                          ],
                          stops: const [0.0, 0.6, 1.0],
                        ),
                      ),
                    ),
                  ),
                  // Status Badge
                  Positioned(
                    left: 12,
                    bottom: 12,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: BackdropFilter(
                        filter: ui.ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.4),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: _getStatusColor(
                                status,
                              ).withValues(alpha: 0.5),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                _getStatusIcon(status),
                                color: _getStatusColor(status),
                                size: 14,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                _getStatusText(status),
                                style: Theme.of(context).textTheme.labelSmall
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Plant Name and Scientific Name (Outside)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  scientificName,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(PlantStatus status) {
    switch (status) {
      case PlantStatus.healthy:
        return Colors.greenAccent;
      case PlantStatus.thirsty:
        return Colors.orangeAccent;
      case PlantStatus.actionNeeded:
        return Colors.redAccent;
    }
  }

  IconData _getStatusIcon(PlantStatus status) {
    switch (status) {
      case PlantStatus.healthy:
        return Icons.check_circle;
      case PlantStatus.thirsty:
        return Icons.water_drop;
      case PlantStatus.actionNeeded:
        return Icons.warning_rounded;
    }
  }

  String _getStatusText(PlantStatus status) {
    switch (status) {
      case PlantStatus.healthy:
        return "Healthy";
      case PlantStatus.thirsty:
        return "Thirsty";
      case PlantStatus.actionNeeded:
        return "Action Needed";
    }
  }
}
