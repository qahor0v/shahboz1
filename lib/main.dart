import 'package:flutter/material.dart';
import 'package:shahboz1/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shahboz Sattorov',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
