import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({
    Key? key, required this.hintText,this.icon,
  }) : super(key: key);

  final String hintText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          suffixIcon: icon
      ),
    );
  }
}
