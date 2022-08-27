import 'package:calculator/screen/home_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: "Máy tính",
      theme: ThemeData.light(),
      home: const Scaffold(
        body: Home(),
      ),
    );
  }
}
