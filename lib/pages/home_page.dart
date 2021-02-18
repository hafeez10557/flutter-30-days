import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_hellow_world/models/Product.dart';
import 'package:flutter_hellow_world/widgets/drawer.dart';

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

      appBar: AppBar(

        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child:(CatalogModel.item!= null && CatalogModel.item.isNotEmpty)? GridView.builder(
           itemCount: CatalogModel.item.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16
          ),
          itemBuilder:(context, index) {
             final iten= CatalogModel.item[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              clipBehavior: Clip.antiAlias,
              child: GridTile(
                header: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,

                  ),
                    child: Text(iten.name,style: TextStyle(
                      color: Colors.white
                    ),)),
                footer: Text(iten.price.toString()),
                child: Image.network(iten.image),
              ),
            );
          },

        ) : Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),

    );
  }
}
