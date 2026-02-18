import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? icon;
  final Color backgroundColor;
  final VoidCallback? onTap;

  const AppBanner({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon,
    this.backgroundColor = const Color.fromARGB(255, 27, 131, 216),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        decoration: BoxDecoration(
          color: backgroundColor,

          borderRadius: BorderRadius.circular(8),

          image: const DecorationImage(
            image: AssetImage(
              'assets/banner.png',
            ), // placeholder para o padrão visual
            fit: BoxFit.cover,
            opacity: 0.1,
          ),
          //
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 175, 213, 233),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                if (icon != null) Icon(icon, color: Colors.white, size: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
