import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:wine_manager/common/defines/path.dart';
import 'package:wine_manager/common/widget/ExampleChart.dart';
import 'package:wine_manager/common/widget/SubTitleText.dart';
import 'package:wine_manager/common/widget/TagButton.dart';
import 'package:wine_manager/common/widget/TitleText.dart';
import 'package:wine_manager/feature/description_page/controller/description_page_controller.dart';
import 'package:wine_manager/feature/home/model/description_item_model.dart';

class DescriptionPage extends GetView<DescriptionPageController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("성분 설명"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          height: Get.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [

                  Container(
                    width: 4,
                    height: 24,
                    color: Colors.orange,
                  ),

                  SizedBox(width: 16),

                  Text(
                    controller.ingredientItem.title ?? "",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 30
                    ),
                  ),

                ],
              ),

              SizedBox(height:16),

              Text(
                controller.ingredientItem.subtitle ?? "",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20
                ),
              ),

              // SizedBox(height:12),
              //
              // Row(
              //   children: [
              //
              //     TagButton("태그 1"),
              //     TagButton("태그 2")
              //
              //   ],
              // ),
              // SizedBox(height:12),
              //
              // Divider(),
              //
              SizedBox(height:16),

              Text(
                controller.ingredientItem.description ?? "",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),

              Expanded(child: Container(),),

              Container(
                margin: EdgeInsets.only(left: 36),
                child: ExampleChart(),
              )





            ],
          ),
        ),
      ),
    );
  }

}