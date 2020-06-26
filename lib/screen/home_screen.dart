import 'package:flutter/material.dart';
//import 'package:githubProfile/screen/profile_screen.dart';
//import 'package:githubProfile/screen/users_screen.dart';
import 'package:githubProfile/widget/login_user.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:
      LoginPage(),
    );
  }
}
