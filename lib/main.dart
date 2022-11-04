import 'package:flutter/material.dart';
import 'package:salufit/src/login.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login app',
      home: Mylogin(),
    );
  }
}