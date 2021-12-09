import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_manager/common/widget/TitleText.dart';

class WineTypeSelectListItemWidget extends StatelessWidget {

  WineTypeSelectListItemWidget(this.title, this.subTitle, {this.iconBackgroundColor});

  final String title;
  final String subTitle;
  final Color? iconBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(3, 3), // changes position of shadow
            ),
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: iconBackgroundColor ?? Colors.blueAccent,
            ),
            child: Icon(
              Icons.no_drinks,
              color: Colors.white,
              size: 36,
            ),
          ),

          SizedBox(width: 16),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                this.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 8),

              Text(
                this.subTitle,
                style: TextStyle(fontSize: 16,
                  color: Colors.grey
                ),
              )

            ],
          ),

          Expanded(child: Container()),

          Icon(
            Icons.chevron_right,
            size: 36,
          ),

          SizedBox(width: 8)

        ],
      ),
    );
  }

}