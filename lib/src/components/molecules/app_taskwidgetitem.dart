import 'package:flutter/material.dart';
import 'package:frota/src/components/atoms/app_badge.dart';
import 'package:frota/src/theme/frota_theme.dart';

class AppTaskwidgetitem extends StatelessWidget {
  final String title;
  final String subtitle;
  final BadgeStatus status;
  final String statusLabel;
  final VoidCallback? onTap;
  final IconData icon;
  final Color? iconColor;

  const AppTaskwidgetitem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.statusLabel,
    required this.icon,
    this.iconColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<FrotaThemeData>()!;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: theme.spacing.cardPadding,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: theme.borders.card,
        ),

        //background icone
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: theme.borders.card,
              ),
              child: Icon(icon, color: Colors.blue),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: theme.text.label),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        subtitle,
                        style: theme.text.label.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(width: 8),
                      AppBadge(label: statusLabel, status: status),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
