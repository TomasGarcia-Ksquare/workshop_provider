import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color primaryColor = Colors.orange;
  Color backgroundColor = Colors.white;
  var iconFloatingElevationButton = Icon(Icons.mode_night);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Container(
        color: backgroundColor,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          child: iconFloatingElevationButton,
          onPressed: () {
            if (primaryColor == Colors.orange) {
              setState(() {
                primaryColor = Colors.black;
                backgroundColor = Colors.grey;
                iconFloatingElevationButton = Icon(Icons.sunny);
              });
            } else {
              setState(() {
                primaryColor = Colors.orange;
                backgroundColor = Colors.white;
                iconFloatingElevationButton = Icon(Icons.mode_night);
              });
            }
          }),
    );
  }
}



/*
 if (primaryColor == Colors.orange) {
              setState(() {
                primaryColor = Colors.black;
                backgroundColor = Colors.grey;
                iconFloatingElevationButton = Icon(Icons.sunny);
              });
            } else {
              setState(() {
                primaryColor = Colors.orange;
                backgroundColor = Colors.white;
                iconFloatingElevationButton = Icon(Icons.mode_night);
              });
            }

*/