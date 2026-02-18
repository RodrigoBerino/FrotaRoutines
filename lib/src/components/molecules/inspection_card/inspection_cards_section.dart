import 'package:flutter/material.dart';
import 'package:frota/src/components/molecules/inspection_card/inspection_card.dart';

class InspectionCardsSection extends StatelessWidget {
  const InspectionCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InspectionCard(
          title: 'Sincronizar\nsuas tarefas',
          icon: Icons.sync,
          status: InspectionCardStatus.pending,
          statusLabel: 'Pendente',
          onTap: () {},
        ),

        const SizedBox(width: 16),

        InspectionCard(
          title: 'Histórico de inspeções',
          icon: Icons.history,
          status: InspectionCardStatus.neutral,
          onTap: () {},
        ),
      ],
    );
  }
}
