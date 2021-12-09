import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:wine_manager/common/widget/SubTitleText.dart';
import 'package:wine_manager/common/widget/TitleText.dart';
import 'package:wine_manager/common/widget/WineTypeSelectListItemWidget.dart';
import 'package:wine_manager/core/route/app_pages.dart';
import 'package:wine_manager/feature/wine_type_select_page/controller/wine_type_select_page_controller.dart';

class WineTypeSelectPage extends GetView<WineTypeSelectPageController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 4,
                      height: 30,
                      color: Colors.blueAccent
                    ),

                    SizedBox(width: 12),

                    Text(
                      "저장소 선택",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                    )

                  ],
                )

                ,
                SizedBox(height: 8),
                SubTitleText("관리하고자 하는 저장소를 선택해주세요."),

                SizedBox(height: 12),

                renderEnabledList(),

                renderDisabledLists(),
                renderDisabledLists(),
                renderDisabledLists(),
                renderDisabledLists(),
                renderDisabledLists(),
                renderDisabledLists(),
                renderDisabledLists(),
                renderDisabledLists(),
                renderDisabledLists(),
                renderDisabledLists(),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget renderEnabledList(){
    return GestureDetector(
      onTap: (){
        Get.toNamed(AppRoutes.HOME);
      },
      child: WineTypeSelectListItemWidget("와인 저장소","red, white 와인에 대한 저장소"),
    );
  }

  Widget renderDisabledLists(){
    return GestureDetector(
      onTap: (){
        Get.snackbar("알림", "현재 실행 불가능합니다.",duration: Duration(milliseconds: 700));
      },
        child: WineTypeSelectListItemWidget(
          "저장소명",
          "저장소명 설명입니다.",
          iconBackgroundColor: Colors.grey.shade300,
        )
    );
  }

}