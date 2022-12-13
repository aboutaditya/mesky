import 'package:flutter/material.dart';
import 'package:mesky/bottombar.dart';
import 'package:mesky/home.dart';
import 'package:mesky/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
