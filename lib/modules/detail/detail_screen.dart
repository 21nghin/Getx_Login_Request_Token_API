import 'package:getx_login_call_api_and_token/import_screen.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      init: DetailController(),
      builder: (controller) => Scaffold(),
    );
  }
}
