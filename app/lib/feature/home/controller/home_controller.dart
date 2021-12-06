import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_manager/feature/home/model/description_item_model.dart';
import 'package:wine_manager/feature/home/model/sensor_data_model.dart';
import 'package:wine_manager/feature/home/view/first_page.dart';
import 'package:wine_manager/feature/home/view/second_page.dart';
import 'package:http/http.dart' as http;
import 'package:wine_manager/feature/home/view/third_page.dart';

class HomeController extends GetxController {

  HomeController();

  final PageController pageController = PageController(initialPage: 0);
  RxInt? currentPage = 1.obs;
  final ValueNotifier<int> pageNotifier = new ValueNotifier<int>(0);

  List<StatelessWidget> pages = [FirstPage(), SecondPage()];

  final wineModel = WineDataModel().obs;

  List<IngredientDescriptionItemModel> ingredientItemsDescItems = [
    IngredientDescriptionItemModel(
        "fixed acid",
        "결합산",
        "주로 타르타르산(tartaric),사과산(malic)으로 이루어져 있고 와인의 산도를 제어 한다.",
        1.0
    ),

    IngredientDescriptionItemModel(
        "volatile acidity",
        "휘발산",
        "와인의 향에 연관이 많다.",
        1.0
    ),

    IngredientDescriptionItemModel(
        "citric acid",
        "구연산",
        "와인의 신선함을 올려주는 역할, 산성화에 연관을 미친다.",
        1.0
    ),

    IngredientDescriptionItemModel(
        "residual sugar",
        "잔여 설탕",
        "와인의 단맛을 올려준다.",
        1.0
    ),

    IngredientDescriptionItemModel(
        "chlorides",
        "염화물",
        "와인의 짠맛의 원인이며 와인의 신맛을 좌우하는 성분 황 화합물 : 황 화합물은 원하지 않는 박테리아와 효모를 죽여서 와인을 오래 보관하는 역할 (free sulfur dioxide, total sulfur, dioxide sulphates) ",
        1.0
    ),

    IngredientDescriptionItemModel(
        "density",
        "밀도",
        "바디의 높고 낮음을 표현하는 와인의 무게감을 의미한다. 산성도(pH) : 와인의 신맛의 정도를 나타낸다.",
        1.0
    ),

    IngredientDescriptionItemModel(
        "pH",
        "잔여 설탕",
        "수소 이온 농도 지수 또는 수소 농도 지수는 수소 이온(H+)의 해리 농도를 역수의 로그를 취해 나타낸 값으로, 단위는 pH를 사용한다. 화학에서 물질의 산과 염기의 강도를 나타내는 척도로서 사용된다.",
        1.0
    ),

    IngredientDescriptionItemModel(
        "sulphates",
        "황산염",
        "황산 분자에 포함된 두 개의 수소 원자 가운데 하나 또는 두 개가 금속 등의 양이온으로 치환된 염. 일반적으로 물에 녹기 쉬우나 칼슘염·바륨염·납염 등은 잘 녹지 않음. 각종 금속의 황산염 광물은 천연으로 존재하며, 자원으로서 유용함. 유산염.",
        1.0
    ),

    IngredientDescriptionItemModel(
        "alcohol",
        "알코올",
        "와인의 과 단맛을 주며 와인의 바디감에 영향을 준다.",
        1.0
    ),

  ];

  @override
  Future<void> onInit() async {
    super.onInit();

    print(ingredientItemsDescItems[0].title);

    requestData();

  }

  @override
  void onClose() {
    super.onClose();
  }

  void requestData() async {
    final response = await http.get(Uri.parse("http://146.56.160.73:32000/api/v1?userId=1234"));
    WineDataModel data = WineDataModel.fromJson(json.decode(response.body));
    print("data.responseCode : ${data.responseCode}");
    wineModel.value = data;
  }

}