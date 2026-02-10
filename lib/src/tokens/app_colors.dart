import 'package:flutter/material.dart';

abstract class FrotaColors {
  //widgets não devem ter acesso as paletas, só conhecem o tema semântico que aponta para as cores da paleta
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

  static const Color blue50 = Color(0xFFEFF6FF);
  static const Color blue100 = Color(0xFFDBEAFE);
  static const Color blue500 = Color(0xFF3B82F6);
  static const Color blue600 = Color(0xFF2563EB);
  static const Color blue700 = Color(0xFF1D4ED8);

  static const Color orange50 = Color(0xFFFFF7ED);
  static const Color orange100 = Color(0xFFFFEDD5);
  static const Color orange400 = Color(0xFFFB923C);
  static const Color orange500 = Color(0xFFF97316);
  static const Color orange600 = Color(0xFFEA580C);
  static const Color orange700 = Color(0xFFC2410C);

  static const Color success = Color(0xFF10B981);
  static const Color warning = Color.fromARGB(255, 245, 164, 23);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);
}

// tokens semânticos
class FrotaSemanticColors {
  final Color backgroundPrimary;
  final Color backgroundSecondary;

  final Color textPrimary;
  final Color textSecondary;
  final Color textDisabled;

  final Color actionPrimary;
  final Color actionPrimaryHover;
  final Color actionPrimaryDisabled;

  final Color actionSecondary;
  final Color actionSecondaryHover;
  final Color actionSecondaryDisabled;

  final Color borderSubtle;
  final Color borderStrong;

  final Color feedbackSuccess;
  final Color feedbackWarning;
  final Color feedbackError;
  final Color feedbackInfo;

  const FrotaSemanticColors({
    required this.backgroundPrimary,
    required this.backgroundSecondary,

    required this.textPrimary,
    required this.textSecondary,
    required this.textDisabled,

    required this.actionPrimary,
    required this.actionPrimaryHover,
    required this.actionPrimaryDisabled,

    required this.actionSecondary,
    required this.actionSecondaryHover,
    required this.actionSecondaryDisabled,

    required this.borderSubtle,
    required this.borderStrong,

    required this.feedbackSuccess,
    required this.feedbackWarning,
    required this.feedbackError,
    required this.feedbackInfo,
  });

  factory FrotaSemanticColors.light() => const FrotaSemanticColors(
    backgroundPrimary: FrotaColors.white,
    backgroundSecondary: FrotaColors.gray50,

    textPrimary: FrotaColors.gray900,
    textSecondary: FrotaColors.gray600,
    textDisabled: FrotaColors.gray400,

    actionPrimary: FrotaColors.blue600,
    actionPrimaryDisabled: FrotaColors.blue100,
    actionPrimaryHover: FrotaColors.blue700,

    actionSecondary: FrotaColors.orange500,
    actionSecondaryDisabled: FrotaColors.orange100,
    actionSecondaryHover: FrotaColors.orange600,

    borderSubtle: FrotaColors.gray200,
    borderStrong: FrotaColors.gray400,

    feedbackSuccess: FrotaColors.success,
    feedbackWarning: FrotaColors.warning,
    feedbackError: FrotaColors.error,
    feedbackInfo: FrotaColors.info,
  );
}
