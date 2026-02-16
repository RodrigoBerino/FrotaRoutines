import 'package:flutter/widgets.dart';
import 'package:frota/src/components/atoms/app_top_bar/app_header.dart';
import 'package:frota/src/components/atoms/app_top_bar/app_nav_bar.dart';

class AppTopBar extends StatelessWidget {
  final String logoAsset;
  final String title;
  final bool isOnline;
  final String wifiMessage;

  const AppTopBar({
    super.key,
    required this.logoAsset,
    required this.title,
    required this.isOnline,
    required this.wifiMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppHeader(
          logoAsset: logoAsset,
          isOnline: isOnline,
          wifiMessage: wifiMessage,
        ),
        AppNavBar(title: title),
      ],
    );
  }
}
