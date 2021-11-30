import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_manager/feature/home/view/first_page.dart';
import 'package:wine_manager/feature/home/view/second_page.dart';
import 'package:wine_manager/feature/home/view/third_page.dart';

class HomeController extends GetxController {

  HomeController();

  final PageController pageController = PageController(initialPage: 0);
  RxInt? currentPage = 1.obs;
  final ValueNotifier<int> pageNotifier = new ValueNotifier<int>(0);

  List<StatelessWidget> pages = [FirstPage(), SecondPage()];

  @override
  Future<void> onInit() async {
    super.onInit();

  }

  @override
  void onClose() {
    super.onClose();
  }

}