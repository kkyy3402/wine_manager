
import 'package:get/get.dart';



class WineTypeSelectPageController extends GetxController {
  List<String> listDatas = <String>["아이템1","아이템1","아이템1"];

  @override
  void onInit() {
    super.onInit();

    listDatas.add("아이템1");
    listDatas.add("아이템2");
    listDatas.add("아이템3");
    listDatas.add("아이템4");
    listDatas.add("아이템5");
    listDatas.add("아이템6");


  }
}