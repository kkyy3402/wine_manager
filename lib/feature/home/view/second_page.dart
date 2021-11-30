import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_manager/common/widget/SubTitleText.dart';
import 'package:wine_manager/common/widget/TitleText.dart';
import 'package:wine_manager/feature/home/controller/home_controller.dart';

class SecondPage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          TitleText("타이틀 2"),
          SizedBox(height: 8),
          SubTitleText("서브 타이틀 텍스트")

        ],
      ),
    );
  }

}