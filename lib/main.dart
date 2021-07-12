
import 'package:flutter/material.dart';
import 'package:day3/screens/home/home_screen.dart';

void main() {
  runApp(getAppRoot());
}

Widget getAppRoot(){

  ThemeData appTheme = ThemeData(brightness: Brightness.light);
  return MaterialApp(
  theme: appTheme,
  debugShowCheckedModeBanner: false,
  home : HomeScreen(),
);
}
