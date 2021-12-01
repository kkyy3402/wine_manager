import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {

  TitleText(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          fontSize: 30
      ),
    );
  }
}
