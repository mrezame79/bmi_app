import 'package:bmi_app/home_page/homskrin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: homskrin(),
    );
  }
}
