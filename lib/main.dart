import 'package:flutter/material.dart';
import 'Screens/Home_Page.dart';

void main() {
  runApp(languageApp());
}

class languageApp extends StatelessWidget {
  const languageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );
  }
}
