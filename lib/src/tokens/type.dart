import 'package:flutter/material.dart';

/// Core tokens de tipografia para o projeto Frota.
/// Define a escala de fontes e pesos de forma centralizada.
abstract class FrotaTypography {
  static const String fontFamily =
      'Inter'; // Fonte padrão comum em designs modernos

  // Font Weights
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // Headers
  static const TextStyle h1 = TextStyle(
    fontSize: 32,
    fontWeight: bold,
    height: 1.25,
    letterSpacing: -0.02,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 24,
    fontWeight: bold,
    height: 1.3,
    letterSpacing: -0.01,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 20,
    fontWeight: semiBold,
    height: 1.4,
  );

  // Body
  static const TextStyle bodyLg = TextStyle(
    fontSize: 18,
    fontWeight: regular,
    height: 1.5,
  );

  static const TextStyle bodyMd = TextStyle(
    fontSize: 16,
    fontWeight: regular,
    height: 1.5,
  );

  static const TextStyle bodySm = TextStyle(
    fontSize: 14,
    fontWeight: regular,
    height: 1.5,
  );
}
