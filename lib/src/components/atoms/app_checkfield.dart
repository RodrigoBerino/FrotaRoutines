import 'package:flutter/material.dart';
import 'package:frota/src/theme/frota_theme.dart';

class AppCheckfield extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const AppCheckfield({
    super.key,
    required this.value,
    required this.title,
    required this.subtitle,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<FrotaThemeData>()!;
    return Container(
      margin: theme.spacing.listItemPadding,
      decoration: BoxDecoration(
        color: value ? Color(0XFFEFF6FF) : Colors.white,
        border: Border.all(
          color: value ? Color(0XFF03A9F4) : Color(0XFFE5E7EB),
        ),
        borderRadius: theme.borders.card,
      ),

      child: CheckboxListTile(
        value: value,
        onChanged: onChanged,
        activeColor: theme.colors.actionPrimary,
        checkColor: Colors.white,
        //
        title: Text(
          title,
          style: theme.text.label.copyWith(
            color: value ? theme.colors.actionPrimary : Color(0XFF6D6D6D),
          ),
        ),
        //
        subtitle: Text(
          subtitle,
          style: theme.text.body.copyWith(color: Color(0XFFB0B0B0)),
        ),
        //
        controlAffinity: ListTileControlAffinity.leading,
        shape: RoundedRectangleBorder(borderRadius: theme.borders.card),
      ),
    );
  }
}
