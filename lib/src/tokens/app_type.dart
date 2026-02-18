import 'package:flutter/material.dart';

abstract class FrotaTypographyTokens {
  static const String fontFamily = 'Inter';

  static const double sizeXl = 32;
  static const double sizeLg = 24;
  static const double sizeMd = 20;
  static const double sizeBase = 16;
  static const double sizeSm = 14;

  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

abstract class _FrotaBaseTextStyles {
  static const TextStyle h1 = TextStyle(
    fontFamily: FrotaTypographyTokens.fontFamily,
    fontSize: FrotaTypographyTokens.sizeXl,
    fontWeight: FrotaTypographyTokens.bold,
    height: 1.25,
    letterSpacing: -0.02,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: FrotaTypographyTokens.fontFamily,
    fontSize: FrotaTypographyTokens.sizeLg,
    fontWeight: FrotaTypographyTokens.bold,
    height: 1.3,
    letterSpacing: -0.01,
  );

  static const TextStyle bodyMd = TextStyle(
    fontFamily: FrotaTypographyTokens.fontFamily,
    fontSize: FrotaTypographyTokens.sizeBase,
    fontWeight: FrotaTypographyTokens.regular,
    height: 1.5,
  );

  static const TextStyle bodySm = TextStyle(
    fontFamily: FrotaTypographyTokens.fontFamily,
    fontSize: FrotaTypographyTokens.sizeSm,
    fontWeight: FrotaTypographyTokens.regular,
    height: 1.5,
  );
}

class FrotaTextStyles {
  final TextStyle screenTitle;
  final TextStyle sectionTitle;
  final TextStyle body;
  final TextStyle bodyStrong;
  final TextStyle caption;
  final TextStyle button;
  final TextStyle label;
  final TextStyle subLabel;

  const FrotaTextStyles({
    required this.screenTitle,
    required this.sectionTitle,
    required this.body,
    required this.bodyStrong,
    required this.caption,
    required this.button,
    required this.label,
    required this.subLabel,
  });

  factory FrotaTextStyles.defaultStyles(Color textColor) {
    return FrotaTextStyles(
      screenTitle: _FrotaBaseTextStyles.h1.copyWith(color: textColor),
      sectionTitle: _FrotaBaseTextStyles.h2.copyWith(color: textColor),
      body: _FrotaBaseTextStyles.bodyMd.copyWith(color: textColor),
      bodyStrong: _FrotaBaseTextStyles.bodyMd.copyWith(
        fontWeight: FrotaTypographyTokens.semiBold,
        color: textColor,
      ),
      caption: _FrotaBaseTextStyles.bodySm.copyWith(color: textColor),
      button: _FrotaBaseTextStyles.bodyMd.copyWith(
        fontWeight: FrotaTypographyTokens.semiBold,
        letterSpacing: 0.5,
        color: textColor,
      ),
      label: _FrotaBaseTextStyles.bodyMd.copyWith(
        fontWeight: FrotaTypographyTokens.bold,
        color: textColor,
      ),
      subLabel: _FrotaBaseTextStyles.bodySm.copyWith(
        fontWeight: FrotaTypographyTokens.regular,
        color: textColor,
      ),
    );
  }
}
