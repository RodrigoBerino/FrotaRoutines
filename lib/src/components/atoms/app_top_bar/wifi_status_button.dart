import 'package:flutter/material.dart';
import '../tooltip/tooltip_bubble.dart';

class WifiStatusButton extends StatefulWidget {
  final bool isOnline;
  final String message;

  const WifiStatusButton({
    super.key,
    required this.isOnline,
    required this.message,
  });

  @override
  State<WifiStatusButton> createState() => _WifiStatusButtonState();
}

class _WifiStatusButtonState extends State<WifiStatusButton> {
  bool _showTooltip = false;

  void _toggleTooltip() {
    setState(() {
      _showTooltip = !_showTooltip;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topRight,
      children: [
        //icon e bg
        GestureDetector(
          onTap: _toggleTooltip,

          child: Container(
            padding: const EdgeInsets.all(8),

            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFFD6D6),
            ),

            child: Icon(
              widget.isOnline ? Icons.wifi_off : Icons.wifi_off,
              size: 18,
              color: widget.isOnline ? Color(0XFFB91C1C) : Color(0XFFB91C1C),
            ),
          ),
        ),

        //
        if (_showTooltip)
          Positioned(
            top: 40,
            right: 0,
            child: TooltipBubble(message: widget.message),
          ),
      ],
    );
  }
}

/* 
void _showTooltip() {
  final overlay = Overlay.of(context);
  final renderBox = context.findRender.obje ;
  final position;
}. */
