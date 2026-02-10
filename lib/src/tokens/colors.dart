import 'package:flutter/material.dart';

/// Core tokens de cores para o projeto Frota.
/// Implementado seguindo padrões de nível sênior com imutabilidade e semântica.
abstract class FrotaColors {
  // Palette - Neutrals
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  static const Color gray50 = Color(0xFFF9FAFB);
  static const Color gray100 = Color(0xFFF3F4F6);
  static const Color gray200 = Color(0xFFE5E7EB);
  static const Color gray300 = Color(0xFFD1D5DB);
  static const Color gray400 = Color(0xFF9CA3AF);
  static const Color gray500 = Color(0xFF6B7280);
  static const Color gray600 = Color(0xFF4B5563);
  static const Color gray700 = Color(0xFF374151);
  static const Color gray800 = Color(0xFF1F2937);
  static const Color gray900 = Color(0xFF111827);

  // Palette - Brand Blue
  static const Color blue50 = Color(0xFFEFF6FF);
  static const Color blue100 = Color(0xFFDBEAFE);
  static const Color blue500 = Color(0xFF3B82F6);
  static const Color blue600 = Color(0xFF2563EB);
  static const Color blue700 = Color(0xFF1D4ED8);

  // Palette - Semantic
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);
}

/// Tokens semânticos para facilitar a manutenção e o suporte a temas.
class FrotaSemanticColors {
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color textPrimary;
  final Color textSecondary;
  final Color brandPrimary;
  final Color borderSubtle;

  const FrotaSemanticColors({
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.textPrimary,
    required this.textSecondary,
    required this.brandPrimary,
    required this.borderSubtle,
  });

  factory FrotaSemanticColors.light() => const FrotaSemanticColors(
    backgroundPrimary: FrotaColors.white,
    backgroundSecondary: FrotaColors.gray50,
    textPrimary: FrotaColors.gray900,
    textSecondary: FrotaColors.gray600,
    brandPrimary: FrotaColors.blue600,
    borderSubtle: FrotaColors.gray200,
  );
}
