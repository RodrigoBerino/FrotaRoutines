import 'package:flutter/material.dart';

class TrianglePainterWidget extends StatelessWidget {
  const TrianglePainterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(size: const Size(20, 10), painter: _TrianglePainter());
  }
}

class _TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFFFD6D6)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
