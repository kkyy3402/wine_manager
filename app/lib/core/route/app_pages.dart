import 'package:get/get.dart';
import 'package:wine_manager/feature/description_page/binding.dart';
import 'package:wine_manager/feature/description_page/view/description_page_view.dart';
import 'package:wine_manager/feature/home/binding.dart';
import 'package:wine_manager/feature/home/view/home_page.dart';
import 'package:wine_manager/feature/login_page/binding.dart';
import 'package:wine_manager/feature/login_page/view/login_page.dart';
import 'package:wine_manager/feature/wine_type_select_page/binding.dart';
import 'package:wine_manager/feature/wine_type_select_page/view/wine_type_select_page.dart';
part 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.INGREDIENT_DESCRIPTION_PAGE,
      page: () => DescriptionPage(),
      binding: DescriptionPageBinding(),
    ),
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => LoginPage(),
        binding: LoginBinding(),
    ),
    GetPage(
        name: AppRoutes.WINE_SELECT_PAGE,
        page: () => WineTypeSelectPage(),
        binding: WineSelectPageBinding(),
    ),
  ];
}