import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusListCell extends StatelessWidget {

  StatusListCell(this.titleStr,{this.color, this.subTitleStr, this.volumeStr});
  final String? titleStr;
  final String? subTitleStr;
  final String? volumeStr;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:Get.width,
      height:120,
      margin:EdgeInsets.all(8),

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(3, 3), // changes position of shadow
            ),
          ]
      ),
      child: Stack(
        children: [

          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      this.titleStr ?? "",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    Text(
                      this.volumeStr ?? "",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 8),

                Text(
                  this.subTitleStr ?? "",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                )

              ],
            ),
          ),

          Positioned(
              left:24,
              child: Container(
                width: 30,
                height:6,
                color: this.color
              )

          )
        ],
      ),
    );
  }
}