import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';
class Product extends StatelessWidget {

final Item item;
final add;
//double total=0;
Product( {required this.item,this.add});

  @override
  Widget build(BuildContext context) {
    return  Container(
       decoration: BoxDecoration(
       borderRadius: BorderRadius.all(Radius.circular(15)),
         color: Colors.white
       ),
       child: Column(
children: [
  Container(
    margin: EdgeInsets.only(left: 130),
    child: Icon(CupertinoIcons.heart, color: Colors.redAccent,size: 30,)
  ),
  Container(
    height: 70,
    child:Image(image: NetworkImage(item.image)),
  ),
  Text(item.title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
  Text(item.description,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text('${item.price}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
      Text(item.old_price,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),


      GestureDetector(
       onTap: add,
        child:Container(
          margin:EdgeInsets.only(left: 40) ,
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.green.shade400,blurStyle: BlurStyle.inner)],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))
          ),
          child:Icon(CupertinoIcons.add,size: 30,) ,
        ) ,
     )
     //FloatingActionButton(onPressed:item.add(),child:Icon(CupertinoIcons.add,size: 30,) ,backgroundColor: Colors.green.shade400),
       // child: Icon(CupertinoIcons.add,size: 30,),


    ],

  )
],
       ),
    );
  }
}
