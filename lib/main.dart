import 'package:flutter/material.dart';
import 'package:flutter_hellow_world/pages/home_page.dart';
import 'package:flutter_hellow_world/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
