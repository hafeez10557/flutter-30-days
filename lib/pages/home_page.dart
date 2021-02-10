import 'package:flutter/material.dart';
import 'package:flutter_hellow_world/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("HI There"),
        centerTitle: true,
      ),
      body: Container(child: Text("Hi There")),
      drawer: MyDrawer(),
      
    );
  }
}
