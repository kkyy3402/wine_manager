import 'package:get/get.dart';
import 'package:wine_manager/feature/home/binding.dart';
import 'package:wine_manager/feature/home/view/home_page.dart';
part 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}