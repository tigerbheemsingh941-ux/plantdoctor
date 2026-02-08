import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class GrowingPlantLoader extends StatefulWidget {
  final double size;
  final Color? color;

  const GrowingPlantLoader({
    super.key,
    this.size = 100.0,
    this.color,
  });

  @override
  State<GrowingPlantLoader> createState() => _GrowingPlantLoaderState();
}

class _GrowingPlantLoaderState extends State<GrowingPlantLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _stemHeight;
  late Animation<double> _leafScale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);

    // Stem grows from 0 to full height in first 60% of animation
    _stemHeight = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeInOut),
      ),
    );

    // Leaves grow from 0 to full size in last 40% of animation
    _leafScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.elasticOut),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: Size(widget.size, widget.size),
          painter: _PlantPainter(
            stemHeight: _stemHeight.value,
            leafScale: _leafScale.value,
            color: widget.color ?? AppColors.primary,
          ),
        );
      },
    );
  }
}

class _PlantPainter extends CustomPainter {
  final double stemHeight;
  final double leafScale;
  final Color color;

  _PlantPainter({
    required this.stemHeight,
    required this.leafScale,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..strokeCap = StrokeCap.round;

    final centerX = size.width / 2;
    final bottomY = size.height;
    final plantHeight = size.height * 0.8;

    // Draw Pot
    final potPath = Path();
    final potWidth = size.width * 0.4;
    final potHeight = size.height * 0.2;
    final potTopY = bottomY - potHeight;

    potPath.moveTo(centerX - potWidth / 2, potTopY);
    potPath.lineTo(centerX + potWidth / 2, potTopY);
    potPath.lineTo(centerX + potWidth / 3, bottomY);
    potPath.lineTo(centerX - potWidth / 3, bottomY);
    potPath.close();

    canvas.drawPath(
      potPath,
      paint..style = PaintingStyle.fill,
    );

    // Draw Stem
    if (stemHeight > 0) {
      final stemPath = Path();
      stemPath.moveTo(centerX, potTopY);
      
      // Calculate current stem tip position
      final currentHeight = plantHeight * stemHeight;
      final controlPoint1 = Offset(centerX + 10, potTopY - currentHeight / 3);
      final controlPoint2 = Offset(centerX - 10, potTopY - currentHeight * 2 / 3);
      final endPoint = Offset(centerX, potTopY - currentHeight);

      stemPath.cubicTo(
        controlPoint1.dx, controlPoint1.dy,
        controlPoint2.dx, controlPoint2.dy,
        endPoint.dx, endPoint.dy,
      );

      canvas.drawPath(
        stemPath,
        paint..style = PaintingStyle.stroke..strokeWidth = 3.0,
      );

      // Draw Leaves
      if (leafScale > 0) {
        final leafPaint = Paint()
          ..color = color
          ..style = PaintingStyle.fill;

        // Left Leaf
        _drawLeaf(
          canvas,
          leafPaint,
          Offset(centerX - 5, potTopY - currentHeight * 0.6),
          -math.pi / 4,
          leafScale,
        );

        // Right Leaf
        _drawLeaf(
          canvas,
          leafPaint,
          Offset(centerX + 5, potTopY - currentHeight * 0.8),
          math.pi / 4,
          leafScale,
        );
      }
    }
  }

  void _drawLeaf(
    Canvas canvas,
    Paint paint,
    Offset position,
    double rotation,
    double scale,
  ) {
    canvas.save();
    canvas.translate(position.dx, position.dy);
    canvas.rotate(rotation);
    canvas.scale(scale);

    final path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(10, -10, 20, 0);
    path.quadraticBezierTo(10, 10, 0, 0);
    path.close();

    canvas.drawPath(path, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(_PlantPainter oldDelegate) {
    return oldDelegate.stemHeight != stemHeight ||
        oldDelegate.leafScale != leafScale ||
        oldDelegate.color != color;
  }
}