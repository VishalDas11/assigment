import 'package:assigment/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widget/textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              "Top 3 Prediction".text.color(Colors.orange).size(22).bold.make().centered().pOnly( bottom: 20),
              "Create a New Account".text.bold.size(22).make().centered().pOnly(bottom: 30),

              "Nickname".text.bold.size(16).make().pOnly(bottom: 3),
              textfield(hintText: '"Enter Nickname',),

              "Username".text.bold.size(16).make().pOnly(bottom: 3, top: 20),
              textfield(hintText: 'Enter Username',),

              "Email Address".text.bold.size(16).make().pOnly(bottom: 3, top: 20),
              textfield(hintText: "abc@gmail.com"),

              "Password".text.bold.size(16).make().pOnly(bottom: 3, top: 20),
              textfield(hintText: "Password", icon: Icon(Icons.visibility_off),).pOnly(bottom: 60),


              ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    )
                ),
                onPressed: (){}, child: "Create Account".text.size(16).color(Colors.white).make(),
              ).pOnly(bottom: 40),

              Row(
                children: [
                  Expanded(child: Divider(indent: 5, color: Colors.black,).pOnly(right: 6, left: 5)),
                  "Or Sign Up With".text.size(14).make(),
                  Expanded(child: Divider(indent: 5, color: Colors.black,).pOnly(left: 5)),
                ],
              ).pOnly(bottom: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TODO  google Button
                  FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: (){}, child: FaIcon(FontAwesomeIcons.google, size: 35, color: Colors.white,),).pOnly(right: 10),
                  // TODO  Facebook Button
                  FloatingActionButton(
                    backgroundColor: Colors.blue,
                    onPressed: (){}, child: FaIcon(FontAwesomeIcons.facebook, size: 35, color: Colors.white,),).pOnly(right: 10),

                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    onPressed: (){}, child: FaIcon(FontAwesomeIcons.apple, size: 35, color: Colors.white,),).pOnly(right: 10),
                ],
              ).pOnly(bottom: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Already have account? ".text.size(16).make(),
                  "Log In".text.bold.size(16).make().onTap(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  })
                ],
              )
            ],
          ).pSymmetric(h: 20, v: 30),
        ),
      ),
    );
  }
}

