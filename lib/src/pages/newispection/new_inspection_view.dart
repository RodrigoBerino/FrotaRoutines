import 'package:flutter/material.dart';
import 'package:frota/src/components/atoms/app_button.dart';
import 'package:frota/src/components/atoms/app_checkfield.dart';
import 'package:frota/src/pages/newispection/new_inspection_viewmodel.dart';
import 'package:provider/provider.dart';

class NewInspectionView extends StatelessWidget {
  const NewInspectionView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NewInspectionViewModel>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.grey),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Nova inspeção',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            _buildSectionTitle('Segurança'),
            ...viewModel.securityItems.map(
              (item) => AppCheckfield(
                value: item.value,
                title: item.title,
                subtitle: item.subtitle,
                onChanged: (_) => viewModel.toggleItem(item),
              ),
            ),

            const SizedBox(height: 24),

            _buildSectionTitle('Estrutura'),
            ...viewModel.structureItems.map(
              (item) => AppCheckfield(
                title: item.title,
                subtitle: item.subtitle,
                value: item.value,
                onChanged: (_) => viewModel.toggleItem(item),
              ),
            ),

            const SizedBox(height: 24),

            AppButton(
              label: 'Finalizar inspeção',
              onPressed: viewModel.isFormValid
                  ? () async {
                      await viewModel.finalizeInspection();
                      if (context.mounted) {
                        Navigator.pop(context);
                      }
                    }
                  : null, // desabilita corretamente
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Color(0XFF525252),
        ),
      ),
    );
  }
}
