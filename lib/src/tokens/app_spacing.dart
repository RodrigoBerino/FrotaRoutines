import 'package:flutter/material.dart';

abstract class FrotaSpacing {
  static const double none = 0;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;
  static const double xxxl = 64;

  /*   static const EdgeInsets edgeInsetsXs = EdgeInsets.all(xs);
  static const EdgeInsets edgeInsetsSm = EdgeInsets.all(sm);
  static const EdgeInsets edgeInsetsMd = EdgeInsets.all(md);
  static const EdgeInsets edgeInsetsLg = EdgeInsets.all(lg); */
}

class FrotaLayoutSpacing {
  final EdgeInsets screenPadding;
  final EdgeInsets cardPadding;
  final EdgeInsets listItemPadding;
  final double sectionSpacing;
  final double itemSpacing;

  const FrotaLayoutSpacing({
    required this.screenPadding,
    required this.cardPadding,
    required this.listItemPadding,
    required this.sectionSpacing,
    required this.itemSpacing,
  });

  factory FrotaLayoutSpacing.defaultSpacing() {
    return const FrotaLayoutSpacing(
      screenPadding: EdgeInsets.all(FrotaSpacing.md),
      cardPadding: EdgeInsets.all(FrotaSpacing.md),
      listItemPadding: EdgeInsets.symmetric(
        horizontal: FrotaSpacing.none,
        vertical: FrotaSpacing.sm,
      ),
      sectionSpacing: FrotaSpacing.lg,
      itemSpacing: FrotaSpacing.sm,
    );
  }
}

abstract class FrotaBorders {
  static const double radiusSm = 4;
  static const double radiusMd = 8;
  static const double radiusLg = 12;
  static const double radiusXl = 16;
  static const double radiusFull = 999;

  static const double widthThin = 1;
  static const double widthThick = 2;

  static BorderRadius borderRadiusMd = BorderRadius.circular(radiusMd);
  static BorderRadius borderRadiusLg = BorderRadius.circular(radiusLg);
}

class FrotaBordersSemantic {
  final BorderRadius card;
  final BorderRadius button;
  final BorderRadius input;
  final BorderRadius sheet;

  const FrotaBordersSemantic({
    required this.card,
    required this.button,
    required this.input,
    required this.sheet,
  });

  factory FrotaBordersSemantic.defaultBorders() {
    return FrotaBordersSemantic(
      card: BorderRadius.circular(FrotaBorders.radiusMd),
      button: BorderRadius.circular(FrotaBorders.radiusMd),
      input: BorderRadius.circular(FrotaBorders.radiusSm),
      sheet: BorderRadius.vertical(top: Radius.circular(FrotaBorders.radiusXl)),
    );
  }
}
