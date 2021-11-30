
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_view_indicators/animated_circle_page_indicator.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:page_view_indicators/page_view_indicators.dart';
import 'package:wine_manager/feature/home/controller/home_controller.dart';
import 'package:wine_manager/feature/home/view/first_page.dart';
import 'package:wine_manager/feature/home/view/second_page.dart';

class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
              () => SafeArea(
                child: Stack(
            children: [

                PageView(
                  controller: controller.pageController,
                  onPageChanged: (page){
                    controller.currentPage?.value = page + 1;
                    controller.pageNotifier.value = page;
                  },
                  children: [
                    FirstPage(),
                    SecondPage()
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      child: CirclePageIndicator(
                        itemCount: 2,
                        size: 14,
                        selectedSize: 14,
                        selectedDotColor: Colors.black38,
                        dotColor: Colors.grey.shade400,
                        currentPageNotifier: controller.pageNotifier,
                      )
                      // child: Text("${controller.currentPage?.value ?? 1}/2"),
                    )
                  ],
                )



            ],
          ),
              )

      )
    );
  }

}