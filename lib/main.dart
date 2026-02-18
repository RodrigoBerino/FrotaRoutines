import 'package:flutter/material.dart';
import 'package:frota/src/main_navigation/main_navigation.dart';
import 'package:frota/src/pages/inspection/view/inspection_view.dart';
import 'package:frota/src/pages/inspection/viewmodel/inspection_viewmodel.dart';
import 'package:frota/src/pages/newispection/new_inspection_view.dart';
import 'package:provider/provider.dart';
import 'package:frota/src/pages/home/viewmodel/home_viewmodel.dart';
import 'package:frota/src/pages/home/viewmodel/connection_viewmodel.dart';
import 'package:frota/src/theme/frota_theme.dart';

import 'package:frota/src/pages/newispection/new_inspection_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewmodel()),
        ChangeNotifierProvider(create: (_) => ConnectionViewModel()),
        ChangeNotifierProvider(create: (_) => InspectionViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: FrotaThemeData.createTheme(),

        home: const MainNavigation(),
        routes: {
          '/inspections': (context) => const InspectionView(),
          '/new-inspection': (context) => ChangeNotifierProvider(
            create: (_) => NewInspectionViewModel(),
            child: const NewInspectionView(),
          ),
        },
      ),
    );
  }
}
