import 'package:get/get.dart';
import 'package:wine_manager/feature/wine_type_select_page/controller/wine_type_select_page_controller.dart';

class WineSelectPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WineTypeSelectPageController>(WineTypeSelectPageController());
  }
}