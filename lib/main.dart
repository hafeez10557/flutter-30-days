import 'package:flutter/material.dart';
import 'package:flutter_hellow_world/pages/home_page.dart';
import 'package:flutter_hellow_world/pages/login_page.dart';
import 'package:flutter_hellow_world/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.lailaTextTheme(),
          ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        MyRouts.homeRouts: (context) => HomePage(),
        MyRouts.loginRouts: (context) => LoginPage(),
      },
    );
  }
}
