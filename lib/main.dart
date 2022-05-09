import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi_calculator.dart';
import 'bmi_result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
       // visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.system,
      /* ThemeMode.system to follow system theme,
         ThemeMode.light for light theme,
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}




