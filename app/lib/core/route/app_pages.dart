import 'package:get/get.dart';
import 'package:wine_manager/feature/description_page/binding.dart';
import 'package:wine_manager/feature/description_page/view/description_page_view.dart';
import 'package:wine_manager/feature/home/binding.dart';
import 'package:wine_manager/feature/home/view/home_page.dart';
import 'package:wine_manager/feature/login_page/binding.dart';
import 'package:wine_manager/feature/login_page/view/login_page.dart';
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
      transition: Transition.cupertino
    ),
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => LoginPage(),
        binding: LoginBinding(),
        transition: Transition.cupertino
    ),
  ];
}