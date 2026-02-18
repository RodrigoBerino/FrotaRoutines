import 'package:flutter/material.dart';
import 'package:frota/src/components/atoms/app_button.dart';
import 'package:frota/src/components/atoms/app_top_bar/app_top_bar.dart';
import 'package:frota/src/components/molecules/inspection_card/inspection_cards_section.dart';
//import 'package:frota/src/pages/inspection/viewmodel/inspection_viewmodel.dart';
//import 'package:provider/provider.dart';

class InspectionView extends StatelessWidget {
  const InspectionView({super.key});

  @override
  Widget build(BuildContext context) {
    //final viewModel = context.watch<InspectionViewModel>();

    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: AppTopBar(title: 'Inspeções', type: TopBarType.internal),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: const InspectionCardsSection(),
          ),

          //const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: AppButton(
              label: 'Nova inspeção',
              icon: Icons.add_circle_outline,
              onPressed: () => Navigator.pushNamed(context, '/new-inspection'),
            ),
          ),
        ],
      ),
    );
  }
}
