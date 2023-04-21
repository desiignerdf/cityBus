import 'package:flutter/material.dart';
import 'package:test_project/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Дипломын ажил Этүгэн',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.pink,
      )),
    );
  }
}
