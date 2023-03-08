import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height*1/2.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF2471A3)
      ),
      child: Column(
        children: [
          "World Cup 2022".text.bold.size(24).color(Colors.white).make().pOnly(bottom: 10),
          "Predict the Winneran an Runner Up's and Win the Prize".text.size(18).color(Colors.white).align(TextAlign.center).make().pOnly(bottom: 20),
          Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFF2980B9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.price_change_outlined, color: Colors.white,),
                    SizedBox(width: 5,),
                    "Current Prize".text.color(Colors.white).make()
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "\$12,350".text.size(24).bold.color(Colors.white).make()
                  ],
                ),
              ],
            ),
          ).pOnly(bottom: 20),
          SizedBox(
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*1/2.8,
                  height: 100,
                  child:  Column(
                    children: [
                      "Prediction Left".text.color(Colors.white).bold.size(16).make().pOnly(bottom: 8),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: "5".text.size(18).color(Colors.black).make(),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5,),

                Container(
                  width: MediaQuery.of(context).size.width*1/2.4,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: "Predict Now".text.size(16).bold.color(Colors.white).make().centered(),

                )
              ],
            ),
          )

        ],
      ),
    ).pOnly(bottom: 30);
  }
}
