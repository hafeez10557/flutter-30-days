import 'package:flutter/material.dart';
import 'package:flutter_hellow_world/models/Product.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';
import 'CatalogImage.dart';

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
            Hero(
                tag: Key(cataLog.id.toString()),
                child: CatalogImage(image: cataLog.image)
            ),
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
                        child: "+ Cart".text.make(),
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