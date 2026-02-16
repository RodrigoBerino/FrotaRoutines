import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frota/src/components/atoms/app_top_bar/wifi_status_button.dart';

class AppHeader extends StatelessWidget {
  final String logoAsset;
  final bool isOnline;
  final String wifiMessage;

  const AppHeader({
    super.key,
    required this.logoAsset,
    required this.isOnline,
    required this.wifiMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(logoAsset, height: 40),
          WifiStatusButton(isOnline: isOnline, message: wifiMessage),
        ],
      ),
    );
  }
}
