import 'package:get/get.dart';
import 'package:wine_manager/feature/description_page/controller/description_page_controller.dart';
import 'package:wine_manager/feature/description_page/view/description_page_view.dart';

class DescriptionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DescriptionPageController>(DescriptionPageController());
  }
}