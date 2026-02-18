import 'package:flutter/material.dart';
//import 'package:frota/src/components/atoms/app_top_bar/app_header.dart';
//import 'package:frota/src/components/atoms/app_top_bar/app_nav_bar.dart';
import 'package:frota/src/components/atoms/app_top_bar/wifi_status_button.dart';
import 'package:frota/src/pages/home/viewmodel/connection_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

enum TopBarType { home, internal }

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  //final String logoAsset;
  final String title;
  final TopBarType type;
  /* final bool isOnline;
  final String wifiMessage; */

  const AppTopBar({
    super.key,
    //required this.logoAsset,
    required this.title,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final connection = context.watch<ConnectionViewModel>();

    return Container(
      color: Colors.blue,

      child: SafeArea(
        bottom: false,

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: type == TopBarType.home
              ? buildHomeHeader(connection)
              : _buildInternalHeader(connection, context),
        ),
      ),
      /* AppHeader(
          logoAsset: logoAsset,
          isOnline: isOnline,
          wifiMessage: wifiMessage,
         */
    );
  }

  Widget buildHomeHeader(ConnectionViewModel connection) {
    return SizedBox(
      height: 72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/logo.svg', height: 25, width: 102),
          WifiStatusButton(
            isOnline: connection.isOnline,
            message: connection.wifiMessage,
          ),
        ],
      ),
    );
  }

  Widget _buildInternalHeader(
    ConnectionViewModel connection,
    BuildContext context,
  ) {
    return SizedBox(
      height: 72,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => type == TopBarType.home
      ? const Size.fromHeight(120)
      : const Size.fromHeight(72);
}
