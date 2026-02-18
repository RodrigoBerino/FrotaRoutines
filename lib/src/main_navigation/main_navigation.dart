import 'package:flutter/material.dart';
import 'package:frota/src/components/atoms/app_bottom_bar.dart';

import 'package:frota/src/pages/home/view/home_view.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBottomBar(
      pages: const [
        HomeView(),
        Placeholder(), // Search
        Placeholder(), // Cart
        Placeholder(), // Profile
      ],
    );
  }
}
