import 'package:flutter/material.dart';
import 'package:flutter_application_4/bottom_navigation_bar.dart';
import 'package:flutter_application_4/gesture.dart';
import 'package:flutter_application_4/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GesturePage());
  }
}
