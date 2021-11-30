import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'core/route/app_pages.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white
  ));

  WidgetsFlutterBinding.ensureInitialized();
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.HOME,
      transitionDuration: Get.defaultTransitionDuration,
      defaultTransition: Transition.fade,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
    );
  }
}