import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Card4 extends StatelessWidget {
  const Card4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF2471A3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 1
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Refer New User".text.color(Colors.white).bold.size(22).make(),
          SizedBox(height: 10,),
          "All User can predict 1 time, however tou can get up to 10 prediction Chances"
              " if you refer new user".text.size(16).color(Colors.white).make()
        ],
      ),
    );
  }
}
