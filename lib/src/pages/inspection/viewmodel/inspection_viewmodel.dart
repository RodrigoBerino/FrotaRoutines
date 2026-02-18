import 'package:flutter/material.dart';

class InspectionViewModel extends ChangeNotifier {
  bool _hasPendingSync = true;
  bool get hasPendingSync => _hasPendingSync;

  void syncTasks() {
    _hasPendingSync = false;
    notifyListeners();
  }
}
