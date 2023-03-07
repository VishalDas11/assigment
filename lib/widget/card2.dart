import 'package:assigment/widget/table.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*1/2.6,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                blurRadius: 3
            )
          ]
      ),
      child: Column(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xFF2471A3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                )
            ),
            child: "All User Prediction".text.color(Colors.white).bold.size(20).make().centered(),
          ),
          Tile(text1: 'Champion', text2: 'First Runner Up', text3: '2nd Runner Up', text4: 'User', color: Colors.white,),
          Tile(text1: 'Spain', text2: 'Germinty', text3: 'Argentina', text4: '155', color: Color(0xFFD3FAD3),),
          Tile(text1: 'Germany', text2: 'Brazil', text3: 'France', text4: '123', color: Color(0xFFFAE8E6),),
          Tile(text1: 'France', text2: 'Spain', text3: 'Brazil', text4: '114', color: Color(0xFFD3FAD3),),
          Container(
            padding: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: "View More->".text.bold.size(18).make().centered(),
          )
        ],
      ),
    ).pOnly(bottom: 30);
  }
}
