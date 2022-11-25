import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controllers/theme_mode_provider.dart';
import 'package:provider_class/models/theme_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //YOU WOULD MOVE YOUR VARIABLE INSIDE THE PROVIDER CLASS
  //HERE YOU WILL CREATE YOUR INSTANCE OF THE PROVIDER CLASS

  @override
  Widget build(BuildContext context) {
    final modeThemeProvider = Provider.of<ThemeModeProvider>(context);
    ThemeModel theme = modeThemeProvider.theme;

    Color primaryColor = theme.primaryColor;
    Color backgroundColor = theme.backgroundColor;
    var iconFloatingElevationButton = theme.iconFloatingElevationButton;

    return Scaffold(
      appBar: AppBar(
        //THIS VARIABLE WILL CHANGE IT STATE
        backgroundColor: primaryColor,
      ),
      body: Container(
        //THIS VARIABLE WILL CHANGE IT STATE
        color: backgroundColor,
      ),
      floatingActionButton: FloatingActionButton(
          //THIS VARIABLE WILL CHANGE IT STATE
          backgroundColor: primaryColor,
          //THIS VARIABLE WILL CHANGE IT STATE
          child: iconFloatingElevationButton,
          onPressed: () {
            //HERE YOU WOULD CALL YOUR INSTANCE.YOURFUNCTION
            // DONT FORGET TO ADD THE IF STATEMENT
            primaryColor == Colors.orange
                ? modeThemeProvider.changeToNightTheme()
                : modeThemeProvider.changeToDayTheme();
          }),
    );
  }
}
