import 'package:flutter/material.dart';
import '../tokens/app_colors.dart';
import '../tokens/app_type.dart';

class FrotaThemeData extends ThemeExtension<FrotaThemeData> {
  final FrotaSemanticColors colors;
  final FrotaTextStyles text;

  const FrotaThemeData({required this.colors, required this.text});

  @override
  FrotaThemeData copyWith({
    FrotaSemanticColors? colors,
    FrotaTextStyles? text,
  }) {
    return FrotaThemeData(
      colors: colors ?? this.colors,
      text: text ?? this.text,
    );
  }

  @override
  FrotaThemeData lerp(ThemeExtension<FrotaThemeData>? other, double t) {
    if (other is! FrotaThemeData) return this;
    return this;
  }

  static ThemeData createTheme() {
    final semantic = FrotaSemanticColors.light();
    final textStyles = FrotaTextStyles.defaultStyles(semantic.textPrimary);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      colorScheme: ColorScheme.fromSeed(
        seedColor: semantic.actionPrimary,
        brightness: Brightness.light,
      ),

      scaffoldBackgroundColor: semantic.backgroundPrimary,

      extensions: [FrotaThemeData(colors: semantic, text: textStyles)],
    );
  }
}
