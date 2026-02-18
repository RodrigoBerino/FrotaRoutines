import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'new_inspection_view.dart';
import 'new_inspection_viewmodel.dart';

class NewInspectionPage extends StatelessWidget {
  const NewInspectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NewInspectionViewModel(),
      child: const NewInspectionView(),
    );
  }
}
