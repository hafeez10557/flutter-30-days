import 'package:flutter/material.dart';
import 'package:flutter_hellow_world/models/Product.dart';
import 'package:flutter_hellow_world/widgets/Item_wegit.dart';
import 'package:flutter_hellow_world/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dumuList=List.generate(20, (index) => CatalogModel.item[0]);

    return Scaffold(

      appBar: AppBar(

        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body:ListView.builder(
        itemCount: dumuList.length,
        itemBuilder:  (context,index){
          return ItemWidget(item: dumuList[index],);
        },
      ),
      drawer: MyDrawer(),
      
    );
  }
}
