
// import 'package:getx_login_call_api_and_token/import_screen.dart';

import 'package:get/get.dart';
import 'package:getx_login_call_api_and_token/modules/splash/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }

}