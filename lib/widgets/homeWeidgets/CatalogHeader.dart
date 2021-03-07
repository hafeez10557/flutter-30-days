import 'package:flutter/material.dart';
import 'package:flutter_hellow_world/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

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