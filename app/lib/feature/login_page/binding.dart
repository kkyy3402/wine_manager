import 'package:get/get.dart';
import 'package:wine_manager/feature/login_page/controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
  }
}