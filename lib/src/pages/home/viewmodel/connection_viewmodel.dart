import 'package:flutter/material.dart';

class ConnectionViewModel extends ChangeNotifier {
  bool _isOnline = true;
  String _wifiMessage = "Efetue suas tarefas e depois sincronize-as.";

  bool get isOnline => _isOnline;
  String get wifiMessage => _wifiMessage;

  void updateConnection(bool status) {
    _isOnline = status;
    _wifiMessage = status
        ? "Efetue suas tarefas e depois sincronize-as."
        : "Sem conexão";
    notifyListeners();
  }
}
