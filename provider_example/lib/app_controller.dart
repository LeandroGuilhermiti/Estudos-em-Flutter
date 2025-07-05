import 'package:flutter/material.dart';

class AppController with ChangeNotifier {
  bool isDark = false;
  int contador = 0;

  void toggleTheme() {
    isDark = !isDark;
    notifyListeners();
  }

  void incrementar() {
    contador++;
    notifyListeners();
  }
}
