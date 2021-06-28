import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/damy_data.dart';
import 'package:untitled/models/product_model.dart';

class FavElement extends StatelessWidget{
  Product p;
  FavElement(this.p);
  @override
  Widget build(BuildContext context) {
    return  Card(margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white60,
      child: ListTile(
        title: Text(p.title),
        isThreeLine:
        true, //will fix the alignment if the subtitle text is too big
        subtitle: Text(getprice()),
        leading: CircleAvatar(backgroundColor: Colors.blue),
        )
          ,);
  }
  String getprice(){
    int price=p.price;
    String s="$price";
    return s;
  }
}
class FavListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
          return ListView(
            children: MockData.mockData.getproducts().map((e) {
              return FavElement(e);
            }).where((element) => element.p.isFav==true).toList()
            ,);
  }

}