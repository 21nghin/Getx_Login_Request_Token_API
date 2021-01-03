import 'package:getx_login_call_api_and_token/import_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) => Scaffold(
        body: Center(
          child: CircularProgressIndicator(strokeWidth: 2)
        ),
      ),
    );
  }
}
