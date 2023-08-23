import 'package:chat/models/messaages.dart';
import 'package:chat/wedgit/constant.dart';
import 'package:flutter/material.dart';

class chatbublle extends StatelessWidget {
  const chatbublle({required this.message});
  final Massages message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color: KPrimaryColor,
        ),
        child: Text(
          message.messages,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class chatbublleforfreind extends StatelessWidget {
  const chatbublleforfreind({required this.message});
  final Massages message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
          color: Color(0xff006389),
        ),
        child: Text(
          message.messages,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
