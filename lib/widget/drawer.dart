import 'package:assigment/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            height: MediaQuery.of(context).size.height*1/6,
            child:Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),

                    ).pOnly(right: 30),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            "Wade Warn".text.bold.size(16).make(),
                            SizedBox(width: 10,),
                            Icon(Icons.edit, color: Colors.black,)
                          ],
                        ),
                        "Wadewarren@.waren.com".text.color(Colors.grey).make(),
                      ],
                    ),
                  ],
                ),
                Expanded(child: Divider(color: Colors.grey,)),
              ],
            ),
          ).pOnly(bottom: 30).centered(),
          drawerTile(title: 'Home', icon: Icons.home, ),
          drawerTile(title: 'All User Prediction', icon: FontAwesomeIcons.usersViewfinder, ),
          drawerTile(title: 'Champion Prediction Statics', icon: FontAwesomeIcons.trophy, ),
          drawerTile(title: 'My Prediction History', icon: FontAwesomeIcons.history, ),
          drawerTile(title: 'Referel', icon: Icons.insert_invitation, ),
          drawerTile(title: 'Profile', icon: Icons.person_pin, ).pOnly(bottom: 40),
          drawerTile(title: 'Logout', icon: Icons.logout, titleColor: Colors.red, color: Colors.red, ontap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
          },)
        ],
      ).pSymmetric(v: 40),
    );
  }
}

class drawerTile extends StatelessWidget {
  const drawerTile({
    Key? key, required this.title, required this.icon, this.titleColor, this.color = Colors.black,this.ontap,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final Color? color;
  final Color? titleColor;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FaIcon(icon, color: color,),
      title: Text(title, style: TextStyle(color: titleColor),),
      onTap: ontap,

    );
  }
}
