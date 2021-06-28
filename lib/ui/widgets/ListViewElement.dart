import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/product_model.dart';

class DemoListTile extends StatefulWidget {
  Product p;

  DemoListTile(this.p);

  @override
  _DemoListTileState createState() => _DemoListTileState();
}

class _DemoListTileState extends State<DemoListTile> {

  @override
  Widget build(BuildContext context) {

    return Card(margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white60,
      child: ListTile(
        title: Text(widget.p.title),
        isThreeLine:
        true, //will fix the alignment if the subtitle text is too big
        subtitle: Text(getprice()),
        leading: CircleAvatar(backgroundColor: Colors.blue),
        trailing: IconButton(icon:Icon(Icons.favorite)
          ,color: widget.p.isFav?Colors.red:Colors.grey,onPressed: (){
          if(widget.p.isFav==false){
            widget.p.isFav=true;
          }else{
            widget.p.isFav=false;
          }
          setState(() {});
          },),),);
  }

  String getprice(){
    int price=widget.p.price;
    String s="$price";
    return s;
  }
}