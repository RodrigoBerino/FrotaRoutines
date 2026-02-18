import 'package:flutter/material.dart';

class InspectionItem {
  final String title;
  final String subtitle;
  bool value;

  InspectionItem({
    required this.title,
    required this.subtitle,
    this.value = false,
  });
}

class NewInspectionViewModel extends ChangeNotifier {
  final List<InspectionItem> _securityItems = [
    InspectionItem(
      title: 'Faróis e lanternas',
      subtitle: 'Funcionamento e integridade',
    ),
    InspectionItem(
      title: 'Setas e luz de freio',
      subtitle: 'Operando corretamente',
    ),
    InspectionItem(title: 'Cinto de segurança', subtitle: 'Em bom estado'),
  ];

  final List<InspectionItem> _structureItems = [
    InspectionItem(title: 'Pneus', subtitle: 'Calibragem e desgaste'),
    InspectionItem(title: 'Estepe', subtitle: 'Disponível e em condições'),
    InspectionItem(title: 'Lataria', subtitle: 'Sem avarias aparentes'),
  ];

  List<InspectionItem> get securityItems => _securityItems;
  List<InspectionItem> get structureItems => _structureItems;

  void toggleItem(InspectionItem item) {
    item.value = !item.value;
    notifyListeners();
  }

  bool get isFormValid =>
      [..._securityItems, ..._structureItems].any((item) => item.value);

  Future<void> finalizeInspection() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
