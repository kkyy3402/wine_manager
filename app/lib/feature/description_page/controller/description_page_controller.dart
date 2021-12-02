import 'package:get/get.dart';
import 'package:wine_manager/feature/home/model/description_item_model.dart';

class DescriptionPageController extends GetxController {

  RxString titleString = "타이틀 텍스트".obs;
  RxString subTitleString = "서브 타이틀 텍스트".obs;
  RxString descriptionString = "설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다. 설명입니다.설명입니다. 설명입니다. 설명입니다.".obs;

  IngredientDescriptionItemModel ingredientItem = Get.arguments["ingredientItem"];

  @override
  Future<void> onInit() async {
    super.onInit();

  }

  @override
  void onClose() {
    super.onClose();
  }

}