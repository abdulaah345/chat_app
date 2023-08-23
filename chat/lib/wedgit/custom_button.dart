import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  custombutton({this.ontap, required this.text});
  String text;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 60,
        width: double.infinity,
        child: Center(child: Text(text)),
      ),
    );
  }
}
