import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color backgroundColor;

  CommonTag(this.title, this.textColor, this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 2.0,bottom: 2.0,left: 3.0,right: 3.0),
      margin: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(6.0)),
      child: Text(title, style: TextStyle(fontSize: 10,color: textColor)),
    );
  }
}
