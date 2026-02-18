import 'package:flutter/material.dart';
import 'package:frota/src/components/atoms/tooltip/triangle_painter.dart';
//import 'package:frota/src/components/atoms/tooltip/triangle_painter.dart';

class TooltipBubble extends StatelessWidget {
  final String message;

  const TooltipBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,

      children: [
        CustomPaint(size: const Size(16, 8), painter: TrianglePainter()),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFFFD6D6),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            message,
            style: const TextStyle(color: Color.fromARGB(255, 175, 41, 31)),
          ),
        ),
      ],
    );
  }
}
