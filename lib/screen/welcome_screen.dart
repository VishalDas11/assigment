import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          "Top 3 Prediction".text.size(24).bold.make().centered().pOnly(bottom: 240),
          "Predict the Champion and Runner-app of the World Cup 2022 and Win The Prize".text.bold.size(28).make().pOnly(bottom: 100),
          ElevatedButton(
            style: ButtonStyle(
             minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              )
            ),
            onPressed: (){}, child: "Login".text.size(16).color(Colors.white).make(),
          ).pOnly(bottom: 40),
          "OR".text.size(16).make().pOnly(bottom: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Already have an Account? ".text.size(16).make(),
              "Sign Up".text.size(16).bold.make()
            ],
          )
        ],
      ).pSymmetric(v: 60, h: 20),
    );
  }
}
