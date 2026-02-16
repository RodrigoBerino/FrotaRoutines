import 'package:flutter/material.dart';

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
  OverlayEntry? _overlayEntry;

  void _toggleTooltip() {
    if (_overlayEntry == null) {
      _showTooltip();
    } else {
      _removeTooltip();
    }
  }
}

 void _showTooltip() {
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: position.dy + 60,
        left: position.dx - 100,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFFFD6D6),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              widget.message,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ),
      ),
    );

    overlay.insert(_overlayEntry!);
  }

  void _removeTooltip() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleTooltip,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFFFE0E0),
        ),
        child: Icon(
          widget.isOnline ? Icons.wifi : Icons.wifi_off,
          color: widget.isOnline ? Colors.green : Colors.red,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _removeTooltip();
    super.dispose();
  }
}