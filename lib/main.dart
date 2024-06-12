import 'package:flutter/material.dart';
import 'package:tb3_appmobi/MakeReservation.dart';
import 'package:tb3_appmobi/home.dart';
import 'package:tb3_appmobi/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: login(),
    );
  }
}