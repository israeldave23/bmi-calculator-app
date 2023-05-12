import 'package:flutter/material.dart';
import 'pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   colorScheme: ColorScheme.dark().copyWith(primary: Color(0xFF0A0321)),
      //   scaffoldBackgroundColor: Color(0xff0a0321),
      // ),

      theme: ThemeData(
        colorScheme: ColorScheme.light().copyWith(
          primary: Color(0xFF0A0321),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0321),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
