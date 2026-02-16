import 'package:flutter/material.dart';

class AppNavBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBack;

  const AppNavBar({super.key, required this.title, this.onBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      color: Colors.blue,
      child: Row(
        children: [
          GestureDetector(
            onTap: onBack ?? () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
