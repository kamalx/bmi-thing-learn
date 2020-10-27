import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        // canvasColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
      // home: InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        ResultsPage.routeName: (context) => ResultsPage()
      },
    );
  }
}
