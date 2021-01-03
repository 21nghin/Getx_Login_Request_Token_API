import 'package:getx_login_call_api_and_token/import_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            color: Colors.transparent,
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: controller.onEmailChange,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  onChanged: controller.onPasswordChange,
                  decoration: InputDecoration(labelText: "Password"),
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                FlatButton(
                  minWidth: double.infinity,
                  onPressed: controller.onPressed,
                  color: Colors.black87,
                  child: Text(
                    'Login'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
