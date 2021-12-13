import 'dart:math';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_manager/common/widget/StatusListCell.dart';
import 'package:wine_manager/common/widget/SubTitleText.dart';
import 'package:wine_manager/common/widget/TitleText.dart';
import 'package:wine_manager/core/route/app_pages.dart';
import 'package:wine_manager/feature/home/controller/home_controller.dart';
import 'package:wine_manager/feature/home/model/description_item_model.dart';
import 'package:wine_manager/feature/home/model/sensor_data_model.dart';

class FirstPage extends GetView<HomeController> {

  // HomeController c = Get.put(HomeController());
  //
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
                    SubTitleText("와인 저장소")

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
              child:                   ListView.builder(
                itemCount: controller.ingredientItemsDescItems.length,
                itemBuilder: (BuildContext context, int index) {

                  IngredientDescriptionItemModel ingredientItem = controller.ingredientItemsDescItems[index];
                  // double? dSensorData = controller.wineModel.value.data?.storageData?[0].sensorData?[index];
                  // WineDataModel data = controller.wineModel.value;

                  String? sensorValue = controller.wineModel.value.data?.storageData?[0].sensorData?[index].toStringAsFixed(1);

                  return GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.INGREDIENT_DESCRIPTION_PAGE, arguments: {
                        "ingredientItem" : ingredientItem
                      });
                    },
                    child: StatusListCell(
                        ingredientItem.title,
                        // color: Colors.blueAccent,
                        color: index == 1 || index == 2 || index == 4 ? Colors.red : Colors.lightBlueAccent,
                        subTitleStr: ingredientItem.description,
                        volumeStr: "$sensorValue mg/L"
                    ),
                  );
                },
              )
            ),

            SizedBox(height: 16),

          ],
        ),
      ),
    );
  }

}