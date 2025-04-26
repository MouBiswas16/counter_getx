import 'package:counter_getx/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Getx',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
