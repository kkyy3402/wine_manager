
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_manager/feature/home/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("Hello"),
      ),
    );
  }

}