import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Tile extends StatelessWidget {
  const Tile({Key? key,
   this.text1 ='',
   this.text2 ='',
    this.text3 ='',
    this.text4 ='', required this.color, }) : super(key: key,);

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(text1, style: TextStyle(fontWeight: FontWeight.bold),),
          Text(text2,  style: TextStyle(fontWeight: FontWeight.bold),),
          Text(text3,  style: TextStyle(fontWeight: FontWeight.bold),),
          Text(text4,  style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    ).pOnly(bottom: 5, right: 20, left: 20);
  }
}
