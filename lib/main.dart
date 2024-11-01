import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.purple, // Tu color secundario
        ),
        scaffoldBackgroundColor:  Color(0xFF0A0E21),
        appBarTheme:  AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white),
          backgroundColor: Color(0xFF0A0E21),
        ),
        textTheme:  TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        /*floatingActionButtonTheme:  FloatingActionButtonThemeData(
          backgroundColor: Colors.cyan.shade600,
        )*/
      ), // Cierra el paréntesis de copyWith aquí
      home: InputPage(),
    );
  }
}


