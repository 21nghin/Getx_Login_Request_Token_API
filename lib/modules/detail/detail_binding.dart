import 'package:getx_login_call_api_and_token/import_screen.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => DetailController());
  }

}