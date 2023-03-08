import 'dart:io';

import 'package:assigment/widget/card4.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

import '../controller/image_picker_controller.dart';
import '../widget/textfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Top3 Prediction".text.bold.color(Colors.orange).make(),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.black,),
        actions: [

          Icon(Icons.notification_add_outlined, color: Colors.black,),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Obx((){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: controller.imagepath.isNotEmpty ?
                FileImage(File(controller.imagepath.toString())): null
              ).centered(),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  controller.getImage();
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt_outlined),
                      SizedBox(width: 5,),
                      "Change Profile Image".text.make()
                    ],
                  ),
                ).pOnly(bottom: 20),
              ),
              "Account Name".text.bold.size(16).make().pOnly(bottom: 3),
              Container(
                padding: EdgeInsets.all(15),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1)
                ),
                child: Text("Wade")
              ).pOnly(bottom: 20),

              "Email Address".text.bold.size(16).make().pOnly(bottom: 3),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)
                  ),
                  child: Text("abc@gmail.com")
              ).pOnly(bottom: 20),

              "Password".text.bold.size(16).make().pOnly(bottom: 3),

              Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)
                  ),
                  child: Text("Password minmum 6 character")
              ).pOnly(bottom: 5),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)
                  ),
                  child: Text("Confirm password")
              ).pOnly(bottom: 20),
              ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    )
                ),
                onPressed: (){}, child: "Save Profile".text.size(16).color(Colors.white).make(),
              ).pOnly(bottom: 40),
              Card4()


            ],
          );
        }).pSymmetric(h: 20, v: 30),
      )
    );
  }
}
