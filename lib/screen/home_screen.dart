import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widget/card1.dart';
import '../widget/card2.dart';
import '../widget/card3.dart';
import '../widget/card4.dart';
import '../widget/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Top3 Prediction".text.bold.color(Colors.orange).make(),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Mydrawer()));
          },
            child: Icon(Icons.menu, color: Colors.black,)),
        actions: const [

          Icon(Icons.notification_add_outlined, color: Colors.black,),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // TODO  First Container
           const Card1(),

            // TODO  Second Container
           const Card2(),

            // TODO Third Container
            const Card3().pOnly(bottom: 30),

            const Card4().pOnly(bottom: 30),
            "Sponser".text.bold.size(22).make().centered(),
            const SizedBox(height: 20,),

            const HomeTile(btnColor: Colors.orange, textColor: Colors.black,),
            const HomeTile(btnColor: Colors.red, textColor: Colors.white,),
            const HomeTile(btnColor: Colors.orange, textColor: Colors.black,),
            const HomeTile(btnColor: Colors.red, textColor: Colors.white,),
            const HomeTile(btnColor: Colors.orange, textColor: Colors.black,),
            const HomeTile(btnColor: Colors.red, textColor: Colors.white,),


          ],
        ).pSymmetric(h: 30, v: 30),
      ),
    );
  }
}

class HomeTile extends StatelessWidget {
  const HomeTile({
    Key? key, required this.btnColor, required this.textColor,
  }) : super(key: key);
  
  final Color btnColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: "Title".text.bold.color(Colors.white).make(),
      trailing: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: "Bet Now".text.color(textColor).make().centered(),
      ),
      tileColor: Colors.black,
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ).pOnly(bottom: 4);
  }
}
