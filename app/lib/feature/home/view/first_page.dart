import 'dart:math';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_manager/common/widget/StatusListCell.dart';
import 'package:wine_manager/common/widget/SubTitleText.dart';
import 'package:wine_manager/common/widget/TitleText.dart';
import 'package:wine_manager/core/route/app_pages.dart';
import 'package:wine_manager/feature/home/controller/home_controller.dart';

class FirstPage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.blue.shade50,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                Container(
                  width: 120,
                  height: 120,

                  child: AvatarGlow(
                    glowColor: Colors.blue,
                    endRadius: 90.0,
                    duration: Duration(milliseconds: 1300),
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: Duration(milliseconds: 100),
                    child: Material(     // Replace this child with your own
                      elevation: 12.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Icon(
                          Icons.check_sharp,
                          size: 32,
                        ),
                        radius: 40.0,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 16),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TitleText("창고 1"),
                    SizedBox(height: 8),
                    SubTitleText("복분자 저장소")

                  ],
                )

              ],
            ),

            SizedBox(height: 24),

            Container(
              width: Get.width,
              alignment: Alignment.center,
              child: SubTitleText(
                "정상입니다!",
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 24),

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.INGREDIENT_DESCRIPTION_PAGE);
                    },
                    child: StatusListCell(
                        "dioxide aa",
                        // color: Colors.blueAccent,
                        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                        subTitleStr: "이러이러한 성분입니다. ...를 하는데 도움을 줍니다",
                        volumeStr:"18mg"
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 16),

          ],
        ),
      ),
    );
  }

}