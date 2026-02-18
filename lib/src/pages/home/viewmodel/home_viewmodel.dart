import 'package:flutter/material.dart';
import 'package:frota/src/components/atoms/app_badge.dart';

class TaskModel {
  final String title;
  final String subtitle;
  final BadgeStatus status;
  final String statusLabel;
  final IconData icon;

  TaskModel({
    required this.title,
    required this.subtitle,
    required this.status,
    required this.statusLabel,
    required this.icon,
  });
}

class HomeViewmodel extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  bool _isOnline = true;
  String _wifiMessage = "Conectado";

  bool get isOnline => _isOnline;
  String get wifiMessage => _wifiMessage;

  final List<TaskModel> _tasks = [
    TaskModel(
      title: 'Inspeções',
      subtitle: 'Revisão da sua frota',
      status: BadgeStatus.error,
      statusLabel: 'Pendente',
      icon: Icons.fact_check_outlined,
    ),
    TaskModel(
      title: 'Portaria',
      subtitle: 'Atualizações documentais',
      status: BadgeStatus.info,
      statusLabel: 'Ok',
      icon: Icons.assignment,
    ),
    TaskModel(
      title: 'Veículo',
      subtitle: 'Verificar veículo/frota',
      status: BadgeStatus.info,
      statusLabel: 'Ok',
      icon: Icons.car_rental,
    ),
    TaskModel(
      title: 'Treinamentos',
      subtitle: 'Acompanhe seus treinamentos',
      status: BadgeStatus.info,
      statusLabel: 'Ok',
      icon: Icons.computer,
    ),
  ];

  List<TaskModel> get tasks => _tasks;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void updateConnection(bool status) {
    _isOnline = status;
    _wifiMessage = status ? "Conectado" : "Sem conexão";
    notifyListeners();
  }
}
