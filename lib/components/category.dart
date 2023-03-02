import 'package:flutter/material.dart';
class Category extends StatelessWidget {

final icon;
final text;
Color color;
final int tap;
Category({ required this.icon,required this.text,required this.color,required this.tap});



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 90,
          width: 100,

         // margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300,width: 2),
            borderRadius: BorderRadius.circular(10),
            color:tap ==1?Colors.green.shade400:Colors.white,
          ),
          child: Icon(icon,size: 50,),
        ),
        Text(text,style: TextStyle(fontSize: 23,color: Colors.black38,))
      ],
    );
  }
}
