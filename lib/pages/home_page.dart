import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_hellow_world/models/Product.dart';
import 'package:flutter_hellow_world/widgets/drawer.dart';
import 'package:flutter_hellow_world/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_hellow_world/models/Product.dart';

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
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )


            ],
          )
        ),
      ),
    );
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.item.length,
      itemBuilder: (context, index) {
        final catalog=CatalogModel.item[index];
        return CatalogItem(cataLog: catalog);
      },
    );
  }
}
class CatalogItem extends StatelessWidget {
  final Item cataLog;

  const CatalogItem({Key key,@required this.cataLog}) :
        assert(cataLog!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
         CatalogImage(image: cataLog.image),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                cataLog.name.text.xl.color(MyTheme.darkBluishColor).bold.make(),
                cataLog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: Vx.m0,
                  children: [
                    "\$${cataLog.price}".text.bold.xl.make(),
                    ElevatedButton(
                        onPressed:  () {},
                        child: "Buy".text.make(),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder())
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    ).white.roundedLg.square(150).make().p16();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key key,@required this.image}) : 
      assert(image!=null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(image).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
  }
}




class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Treding Product".text.xl2.make(),

      ],
    );
  }
}

