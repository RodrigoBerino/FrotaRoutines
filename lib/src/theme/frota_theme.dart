import 'package:flutter/material.dart';
import '../tokens/colors.dart';
import '../tokens/type.dart';

class FrotaThemeData extends ThemeExtension<FrotaThemeData> {
  final FrotaSemanticColors colors;

  const FrotaThemeData({required this.colors});

  @override
  ThemeExtension<FrotaThemeData> copyWith({FrotaSemanticColors? colors}) {
    return FrotaThemeData(colors: colors ?? this.colors);
  }

  @override
  ThemeExtension<FrotaThemeData> lerp(
    ThemeExtension<FrotaThemeData>? other,
    double t,
  ) {
    if (other is! FrotaThemeData) return this;
    return this;
  }

  static ThemeData createTheme() {
    final semantic = FrotaSemanticColors.light();

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: semantic.brandPrimary,
      scaffoldBackgroundColor: semantic.backgroundPrimary,
      extensions: [FrotaThemeData(colors: semantic)],
      textTheme: const TextTheme(
        displayLarge: FrotaTypography.h1,
        displayMedium: FrotaTypography.h2,
        displaySmall: FrotaTypography.h3,
        bodyLarge: FrotaTypography.bodyLg,
        bodyMedium: FrotaTypography.bodyMd,
        bodySmall: FrotaTypography.bodySm,
      ),
    );
  }
}
