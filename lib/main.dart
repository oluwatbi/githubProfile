import 'package:flutter/material.dart';
import 'package:githubProfile/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'githubProfile',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: HomeScreen(),
    );
  }
}
