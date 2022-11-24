import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //YOU WOULD MOVE YOUR VARIABLE INSIDE THE PROVIDER CLASS
  //HERE YOU WILL CREATE YOUR INSTANCE OF THE PROVIDER CLASS
  Color primaryColor = Colors.orange;
  Color backgroundColor = Colors.white;
  var iconFloatingElevationButton = const Icon(Icons.mode_night);

  @override
  Widget build(BuildContext context) {
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
          }),
    );
  }
}
