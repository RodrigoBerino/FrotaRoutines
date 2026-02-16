import 'package:flutter/material.dart';
import 'package:frota/src/components/atoms/tooltip/triangle_painter.dart';

class TooltipBubble extends StatelessWidget {
  final String message;

  const TooltipBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: const Color(0xFFFFD6D6),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(message, style: const TextStyle(color: Colors.red)),
        ),
        const TrianglePainterWidget(),
      ],
    );
  }
}
