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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.blue,
      alignment: Alignment.center,
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(logoAsset, height: 32),
              WifiStatusButton(isOnline: isOnline, message: wifiMessage),
            ],
          ),
        ),
      ),
    );
  }

  /*   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 16); */
}
