import 'package:assigment/screen/home_screen.dart';
import 'package:assigment/screen/signUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widget/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      "Top 3 Prediction".text.color(Colors.orange).size(22).bold.make().centered().pOnly( bottom: 20),
      "Create a New Account".text.bold.size(22).make().centered().pOnly(bottom: 30),
          btn(text: 'Login With Google', color: Colors.red, icon: FontAwesomeIcons.google,),
          SizedBox(height: 20,),
          btn(text: 'Login With Facebook', color: Color(0xFF2471A3), icon: FontAwesomeIcons.facebook,),
          SizedBox(height: 20,),
          btn(text: 'Login With Apple', color: Colors.black, icon: FontAwesomeIcons.apple,).pOnly(bottom: 30),

          Divider(color: Colors.grey,),

          "Email Address".text.bold.size(16).make().pOnly(bottom: 4, top: 20),
          textfield(hintText: '"Enter Email',),

          "Password".text.bold.size(16).make().pOnly(top: 20, bottom: 4),
          textfield(hintText: '"Password',),
          Align(
            alignment: Alignment.topRight,
            child: "Forgot Password".text.bold.make().pOnly(top: 10),
          ).pOnly(bottom: 30),

         Container(
           width: double.infinity,
           height: 45,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             border: Border.all(color: Colors.black)
           ),
           child: "Login With Email".text.bold.make().centered().onTap(() {
             Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
           }),
         ).pOnly(bottom: 20),
          "Or".text.make().centered().pOnly(bottom: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Don't have an account? ".text.make(),
              "Sign up".text.bold.make().onTap(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
              })
            ],
          )
      ]
      ).pSymmetric(h: 20, v: 30),
    );
  }
}

class btn extends StatelessWidget {
  const btn({
    Key? key, required this.text, required this.color, required this.icon,
  }) : super(key: key);

  final String text;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 45)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
          )
        ),
        onPressed: (){}, child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon).pOnly(right: 10),

            "$text".text.size(18).color(Colors.white).make()
          ],
    ),);
  }
}
