
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_view_indicators/animated_circle_page_indicator.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:page_view_indicators/page_view_indicators.dart';
import 'package:wine_manager/feature/home/controller/home_controller.dart';
import 'package:wine_manager/feature/home/view/first_page.dart';
import 'package:wine_manager/feature/home/view/second_page.dart';
import 'package:wine_manager/feature/home/view/third_page.dart';

class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [

            PageView(
              controller: controller.pageController,
              onPageChanged: (page){
                controller.currentPage?.value = page + 1;
                controller.pageNotifier.value = page;
              },
              children: controller.pages,
            ),

            SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 16),
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: (){
                                print("눌림");
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.black54,
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: CirclePageIndicator(
                        itemCount: controller.pages.length,
                        size: 14,
                        selectedSize: 14,
                        selectedDotColor: Colors.black38,
                        dotColor: Colors.grey.shade400,
                        currentPageNotifier: controller.pageNotifier,
                      )
                    // child: Text("${controller.currentPage?.value ?? 1}/2"),
                  )
                ],
              ),
            )



          ],
        )

    );
  }

}