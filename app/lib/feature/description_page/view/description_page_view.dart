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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.black87
        ),
        title: Text(
          "성분 설명",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(24),
            height: Get.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  controller.ingredientItem.description ?? "",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18
                  ),
                ),

                SizedBox(height: 16),

                Divider(),

                SizedBox(height: 16),

                Container(
                  width: Get.width,
                  child: Text(
                    "설명 보기",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                SizedBox(height: 16),

                renderLine("성분명",controller.ingredientItem.title,8),
                renderLine("정상 범위 최소값","0.5",8),
                renderLine("정상 범위 최대값","1.2",8),
                renderLine("종합","정상",8),

                SizedBox(height:24),

                GestureDetector(
                  onTap: (){
                    Get.snackbar("알림", "지원하지 않는 기능입니다.");
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "더보기",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                Divider(),

                SizedBox(height: 30),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.error,
                    size: 30,
                    color: Colors.deepOrange,
                  ),
                ),

                SizedBox(height: 16),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "도움이 필요하신가요?",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                SizedBox(height:16),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "아래 버튼을 통해 지원을 받아보세요!",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16
                    ),
                  ),
                ),

                SizedBox(height:32),

                GestureDetector(
                  onTap: (){
                    Get.snackbar("알림", "지원하지 않는 기능입니다.");
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "지원 요청하기",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )


                // Text(
                //   controller.ingredientItem.subtitle ?? "",
                //   style: TextStyle(
                //       color: Colors.black54,
                //       fontSize: 20
                //   ),
                // ),

                // SizedBox(height:16),
                //
                // Container(
                //   margin: EdgeInsets.only(left: 36),
                //   child: ExampleChart(),
                // )





              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget renderLine(String? title, String? content, double verticalMargin){
    return Container(
      margin: EdgeInsets.only(top: verticalMargin, bottom: verticalMargin),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title ?? "",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
              ),
            ),
          ),

          Flexible(
              flex: 1,
              child: Text(
                content ?? "",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              )
          ),

        ],
      ),
    );
  }

}