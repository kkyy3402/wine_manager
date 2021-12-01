import 'package:flutter/material.dart';

class TagButton extends StatelessWidget {

  TagButton(this.text);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      alignment:Alignment.center,
      padding: EdgeInsets.only(left:8, right:8),
      margin: EdgeInsets.only(right:12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        border: Border.all(
            width: 1.0,
            color: Colors.grey
        ),
      ),
      child: Text(
          this.text,
        style: TextStyle(
          color: Colors.grey
        ),
      ),
    );
  }

}