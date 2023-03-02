import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task_4/components/category.dart';
import 'package:task_4/components/product.dart';
import 'package:task_4/models/item.dart';
class Edeka extends StatefulWidget {

  @override
  State<Edeka> createState() => _EdekaState();
}

class _EdekaState extends State<Edeka> {
  dynamic total=0;
  dynamic index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              leading: Icon(
                  Icons.menu_outlined, color: Colors.grey[850], size: 40),
              centerTitle: true,
              title: Text('EDEKA', style: TextStyle(color: Colors.blueAccent,
                  fontSize: 35,
                  fontWeight: FontWeight.w900)),
              actions: [
                Icon(Icons.share_outlined, color: Colors.blueAccent,
                  shadows: [
                    BoxShadow(color: Colors.black,
                        blurStyle: BlurStyle.inner,
                        spreadRadius: 0.9)
                  ],
                  size: 35,),
                Icon(CupertinoIcons.heart, color: Colors.red,
                  size: 35,
                  shadows: [Shadow(color: Colors.white70, blurRadius: 10)],)
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.search,size: 30,),
                      Text('Search product here',style: TextStyle(fontSize: 23,color: Colors.black38,)),
                    ],
                  ),
                ),
               Container(
                 width: 60,
                 height: 60,
                 margin: EdgeInsets.only(top: 15),
                 decoration: BoxDecoration(
                   color: Colors.grey[200],
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child:  Icon(Icons.screen_rotation_alt,color: Colors.black38,size: 30,),
               )
              ],
            ),
           Container(
             margin: EdgeInsets.only(top:15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Category(icon:Icons.bakery_dining,text:'Bakery',color: Colors.white,tap: 0,),
                 Category(icon:Icons.food_bank,text:'Fruits',color: Colors.white,tap: 1),
                 Category(icon:Icons.emoji_food_beverage_rounded,text:'Vegetables',color: Colors.white,tap: 0,),
                // Category(icon:Icons.fastfood,text:'Milk'),
               ],
             ),
           ),
Expanded(child: GridView.builder(itemCount: Items.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
    childAspectRatio:  1,
    crossAxisSpacing: 1,
    mainAxisSpacing: 2),
    itemBuilder: (context, index) => Column(
      children: [
        Product(item: Items[index],add: (){
 setState(() {
Items[index].counter++;
total+=Items[index].price;
 print(total);
 });
 },)
      ],
    ),)),
            // Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            //   itemBuilder: (context, index) => Column(
            //     children: [
            //       Product(item: Items[index])
            //     ],
            //   ),)),
      Container(
        decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(15)),
        width: 350,
        height: 50,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('total:${Items[index].counter}',style: TextStyle(fontSize: 22)),
            Text('Price:${total}',style: TextStyle(fontSize: 22)),
            Container(
              //margin: EdgeInsets.only(left: 70,right: 100),
              decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(15)),
              width: 100,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Cart',style: TextStyle(color: Colors.white,fontSize: 20)),
                  Icon(CupertinoIcons.cart,color: Colors.white,size: 35,)
                ],
              ),
            )
          ],
        ),
      )

    ]
   // ))) ]));


      ));}
}
//   crossAxisCount: 2,
//   children:
//     Items.map((e) {
//         return Product(item : e,add: ());
//       }).toList()
//
// )),
// Expanded(
//
// child: GridView.builder(
//
// //itemCount: Items.length,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //childAspectRatio: 0.76,
// crossAxisCount: 2),
// itemBuilder: (context, index) =>  Column(
// children: [
// Product(
// item: Items[index],
// add: (){
// setState(() {
// Items[index].counter++;
// total+=Items[index].price;
// print(total);
// });
// },
// ),