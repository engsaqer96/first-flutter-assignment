import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/damy_data.dart';
import 'package:untitled/models/product_model.dart';

import 'ListViewElement.dart';

class testScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return testScreenState();
  }

}
class testScreenState extends  State<StatefulWidget>{
  String state='day';
  bool switchValue=false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(
          children: MockData.mockData.getproducts().map((e) {
            if(e.isFav==true)
            return DemoListTile(e);
          }).toList()
          ,)

    );
  }

}