import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  Brightness brightness = Brightness.light;

  bool _isDark = false;

  setBrightness(bool value) {
    _isDark = value;
    _isDark ? brightness = Brightness.dark : brightness = Brightness.light;
    notifyListeners();
  }

  bool get isDark => _isDark;
}
