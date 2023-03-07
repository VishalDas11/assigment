import 'package:assigment/widget/table.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*1/2.5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                blurRadius: 3
            )
          ]
      ),
      child: Column(
        children: [
          Container(
            height: 60,
            decoration: const BoxDecoration(
                color: Color(0xFF2471A3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                )
            ),
            child: "Champion Prediction Statics".text.color(Colors.white).bold.size(20).make().centered(),
          ),
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                "Team".text.size(16).bold.make(),
                "%of User Prediction".text.bold.size(16).make()
              ],
            ),
          ),
          Tile1(title: 'Germany ', trailing: '48.8%',),
          Tile1(title: 'Itley ', trailing: '20.4%',),
          Tile1(title: 'Brazil ', trailing: '18.8%',),


          Container(
            padding: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: "View More->".text.bold.size(18).make().centered(),
          )
        ],
      ),
    );
  }
}

class Tile1 extends StatelessWidget {
  Tile1({
    required this.title,
    required this.trailing,
    Key? key,
  }) : super(key: key);

  String title;
  String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: ListTile(
        leading: CircleAvatar(radius: 25,),
        title: "$title".text.bold.make(),
        trailing: "$trailing".text.bold.make(),
        tileColor: Colors.red.withOpacity(0.3),
        dense: true,
      ),
    );
  }
}
