import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  HomeController();

  final PageController pageController = PageController(initialPage: 0);
  RxInt? currentPage = 1.obs;
  final ValueNotifier<int> pageNotifier = new ValueNotifier<int>(0);

  @override
  Future<void> onInit() async {
    super.onInit();

  }

  @override
  void onClose() {
    super.onClose();
  }

}