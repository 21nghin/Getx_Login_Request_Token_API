// import 'package:getx_login_call_api_and_token/import_screen.dart';

import 'package:get/get.dart';
import 'package:getx_login_call_api_and_token/modules/detail/detail_binding.dart';
import 'package:getx_login_call_api_and_token/modules/detail/detail_screen.dart';
import 'package:getx_login_call_api_and_token/modules/home/home_binding.dart';
import 'package:getx_login_call_api_and_token/modules/home/home_screen.dart';
import 'package:getx_login_call_api_and_token/modules/splash/splash_binding.dart';
import 'package:getx_login_call_api_and_token/modules/splash/splash_screen.dart';
import 'package:getx_login_call_api_and_token/routes/app_const_routes.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
        name: AppConstRoutes.SPLASH,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
      name: AppConstRoutes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppConstRoutes.DETAIL,
      page: () => DetailScreen(),
      binding: DetailBinding(),
    ),
  ];
}
