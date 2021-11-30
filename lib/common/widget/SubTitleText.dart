import 'package:flutter/material.dart';

class SubTitleText extends StatelessWidget {

  SubTitleText(this.text, {this.color, this.fontWeight});
  final String text;
  Color? color;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          fontSize: 16,
          color: this.color != null ? this.color : Colors.grey,
          fontWeight: this.fontWeight
      ),
    );
  }
}
