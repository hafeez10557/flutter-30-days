import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_hellow_world/models/Product.dart';
import 'package:flutter_hellow_world/widgets/homeWeidgets/CatalogHeader.dart';
import 'package:flutter_hellow_world/widgets/homeWeidgets/CatalogImage.dart';
import 'package:flutter_hellow_world/widgets/homeWeidgets/CatalogList.dart';
import 'package:flutter_hellow_world/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData()async{
    var catalogJSON=await rootBundle.loadString("assets/files/catalog.json");
    var decdeData=jsonDecode(catalogJSON);
    var productData=decdeData["products"];
    CatalogModel.item=List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Vx.m16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.item != null &&CatalogModel.item.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          )
        ),
      ),
    );
  }
}











