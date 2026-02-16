import 'package:flutter/material.dart';
import '../tokens/app_colors.dart';
import '../tokens/app_type.dart';
import '../tokens/app_spacing.dart';

class FrotaThemeData extends ThemeExtension<FrotaThemeData> {
  final FrotaSemanticColors colors;
  final FrotaTextStyles text;
  final FrotaLayoutSpacing spacing;
  final FrotaBordersSemantic borders;

  const FrotaThemeData({
    required this.colors,
    required this.text,
    required this.spacing,
    required this.borders,
  });

  @override
  FrotaThemeData copyWith({
    FrotaSemanticColors? colors,
    FrotaTextStyles? text,
    FrotaLayoutSpacing? spacing,
    FrotaBordersSemantic? borders,
  }) {
    return FrotaThemeData(
      colors: colors ?? this.colors,
      text: text ?? this.text,
      spacing: spacing ?? this.spacing,
      borders: borders ?? this.borders,
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
    final spacing = FrotaLayoutSpacing.defaultSpacing();
    final borders = FrotaBordersSemantic.defaultBorders();

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      colorScheme: ColorScheme.fromSeed(
        seedColor: semantic.actionPrimary,
        brightness: Brightness.light,
      ),

      scaffoldBackgroundColor: semantic.backgroundPrimary,

      extensions: [
        FrotaThemeData(
          colors: semantic,
          text: textStyles,
          spacing: spacing,
          borders: borders,
        ),
      ],
    );
  }
}
