import 'package:flutter/material.dart';
import 'package:flutter_hellow_world/models/Product.dart';
import 'package:flutter_hellow_world/pages/home_detail_page.dart';

import 'CatalogItem.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.item.length,
      itemBuilder: (context, index) {
        final catalog=CatalogModel.item[index];
        return InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetailPage(catalog: catalog),)),
            child: CatalogItem(cataLog: catalog));
      },
    );
  }
}