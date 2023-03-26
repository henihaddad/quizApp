import 'package:flutter/material.dart';

class CTitle extends StatelessWidget {
  String title;
  double size;
  CTitle(this.title,this.size);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Text(
        title,
        style: TextStyle(
          fontSize: size,
          color: Colors.purple.shade900 ,
        ),
      ),
    );
  }
}