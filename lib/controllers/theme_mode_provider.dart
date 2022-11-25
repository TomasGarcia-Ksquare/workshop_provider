//HERE YOU WILL CREATE YOUR PROVIDER CLASS INHERIT TO CHANGE NOTIFIER
//DONT FORGET TO ADD THE NOTIFY LISTENERS AT THE END OF YOUR FUNCTIONS
import 'package:provider_class/models/theme_model.dart';
import 'package:flutter/material.dart';

class ThemeModeProvider extends ChangeNotifier {
  ThemeModel theme = ThemeModel(
    primaryColor: Colors.orange,
    backgroundColor: Colors.white,
    iconFloatingElevationButton: Icon(Icons.light_mode_outlined),
  );

  void changeToNightTheme() {
    theme = ThemeModel(
      primaryColor: Colors.black,
      backgroundColor: Colors.grey,
      iconFloatingElevationButton: Icon(Icons.mode_night),
    );
    notifyListeners();
  }

  void changeToDayTheme() {
    theme = ThemeModel(
      primaryColor: Colors.orange,
      backgroundColor: Colors.white,
      iconFloatingElevationButton: Icon(Icons.light_mode_outlined),
    );
    notifyListeners();
  }
}
