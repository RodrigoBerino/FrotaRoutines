import 'package:flutter/material.dart';
import 'package:frota/src/theme/frota_theme.dart';

enum BadgeStatus { succes, info, warning, error }

class AppBadge extends StatelessWidget {
  final String label;
  final BadgeStatus status;

  const AppBadge({
    super.key,
    required this.label,
    this.status = BadgeStatus.succes,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<FrotaThemeData>()!;

    Color backgroundColor;
    Color textColor;

    switch (status) {
      case BadgeStatus.succes:
        backgroundColor = theme.colors.feedbackSuccess;
        textColor = theme.colors.textOnSuccess;
        break;
      case BadgeStatus.info:
        backgroundColor = theme.colors.feedbackInfo;
        textColor = theme.colors.textOnInfo;
        break;
      case BadgeStatus.warning:
        backgroundColor = theme.colors.feedbackWarning;
        textColor = theme.colors.textOnWarning;
        break;
      case BadgeStatus.error:
        backgroundColor = theme.colors.feedbackError;
        textColor = theme.colors.textOnError;
        break;
    }

    return Container(
      padding: theme.spacing.cardPadding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: theme.borders.card,
      ),
      child: Text(
        label,
        style: theme.text.caption.copyWith(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
