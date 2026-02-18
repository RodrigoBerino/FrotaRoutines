import 'package:flutter/material.dart';
import 'package:frota/src/theme/frota_theme.dart';

enum AppButtonVariant { primary, secondary }

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isLoading;

  const AppButton({
    super.key,
    required this.label,
    this.onPressed,
    this.isLoading = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<FrotaThemeData>()!;

    //Color textColor;

    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,

      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colors.actionSecondary,
        minimumSize: const Size(double.infinity, 54),
        shape: RoundedRectangleBorder(borderRadius: theme.borders.button),
      ),

      child: isLoading
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 20, color: Colors.white),
                  const SizedBox(width: 8),
                ],
                Text(
                  label,
                  style: theme.text.button.copyWith(
                    color: theme.colors.textSecondary,
                  ),
                ),
              ],
            ),
    );
  }
}
