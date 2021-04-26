import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/palette.dart';

import 'screens/navScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        primaryColor: Palette.primaryColor,
        scaffoldBackgroundColor: Palette.white,
      ),
      home: NavScreen(),
    );
  }
}
