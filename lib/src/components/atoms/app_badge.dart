import 'package:flutter/material.dart';
import 'package:frota/src/theme/frota_theme.dart';

enum BadgeStatus { success, info, warning, error }

class AppBadge extends StatelessWidget {
  final String label;
  final BadgeStatus status;
  final bool showDot;

  const AppBadge({
    super.key,
    required this.label,
    this.status = BadgeStatus.success,
    this.showDot = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<FrotaThemeData>()!;

    Color baseColor;

    switch (status) {
      case BadgeStatus.success:
        baseColor = theme.colors.feedbackSuccess;
        break;
      case BadgeStatus.info:
        baseColor = theme.colors.feedbackInfo;
        break;
      case BadgeStatus.warning:
        baseColor = theme.colors.feedbackWarning;
        break;
      case BadgeStatus.error:
        baseColor = theme.colors.feedbackError;
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: baseColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(999), // pill
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showDot) ...[
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: baseColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 6),
          ],
          Text(
            label,
            style: theme.text.caption.copyWith(
              color: baseColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
