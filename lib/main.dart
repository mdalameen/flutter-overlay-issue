import 'package:flutter/material.dart';
import 'package:flutter_overlay_issue/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Overlay issue',
      home: HomePage(),
    );
  }
}
