import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HI There"),
        
      ),
      body: Container(child: Text("Hi There")),
      drawer: Drawer(),
    );
  }
}
