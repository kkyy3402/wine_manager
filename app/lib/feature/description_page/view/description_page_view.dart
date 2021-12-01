import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:wine_manager/common/defines/path.dart';
import 'package:wine_manager/common/widget/SubTitleText.dart';
import 'package:wine_manager/common/widget/TagButton.dart';
import 'package:wine_manager/common/widget/TitleText.dart';
import 'package:wine_manager/feature/description_page/controller/description_page_controller.dart';

class DescriptionPage extends GetView<DescriptionPageController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                children: [

                  //Image.asset(WINE_IMAGE_PATH),
                  SizedBox(
                    height: 120,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                            WINE_IMAGE_PATH,
                          fit: BoxFit.fitWidth,
                        ),
                        ClipRRect( // Clip it cleanly.
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                            child: Container(
                              margin: EdgeInsets.only(top:24),
                              alignment: Alignment.center,
                              child: Text(
                                  "성분 설명",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SafeArea(
                    child: Container(
                      margin: EdgeInsets.only(left:12),
                      child: IconButton(onPressed: (){
                        Get.back();
                      }, icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                    ),
                  )

                ],
              ),

              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      controller.titleString.value,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 24
                      ),
                    ),

                    SizedBox(height:8),

                    Text(
                      controller.subTitleString.value,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                    SizedBox(height:12),

                    Row(
                      children: [

                        TagButton("태그 1"),
                        TagButton("태그 2")

                      ],
                    ),

                    SizedBox(height:12),

                    Text(
                      controller.descriptionString.value ,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                    Divider(),

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }

}