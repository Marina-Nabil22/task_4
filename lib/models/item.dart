import 'package:flutter/cupertino.dart';
class Item{
  String image;
  String title;
  String description;
  double price;
  String old_price;
  int counter=0;

  Item(this.image, this.title, this.description, this.price, this.old_price);

}
List<Item> Items = [
  Item('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGXO60SKVvF-TJqXkv1Z2A5hiykfL4OjJ7BA&usqp=CAU', 'Lemon', 'Bergamo Italy', 1.10,'2'),
Item('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiHFPAKLnbl_aPwpU5mK6qOlHQKUYLea2QUQ&usqp=CAU', 'Banana', 'Cattier Italiano', 2.05,'3'),
 Item('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStl2r-SoXdtX2WvBeLVFYDBo6PqMlgMXETSA&usqp=CAU', 'Grape', 'Cattier Italiano', 3.15,'4'),
 Item('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP8dy33UhrLJWueewdubn5LqnJrW_oE7w67w&usqp=CAU', 'Orange', 'Cattier Italiano', 2,'3.10')
];
