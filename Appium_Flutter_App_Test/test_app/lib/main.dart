import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';

import 'log_and_reg_folder/login_page.dart';
import 'view/Home.dart';
import 'view/ancestor_element_selector.dart';

void main() {
  enableFlutterDriverExtension();
  runApp(Test_App());
}

class Test_App extends StatelessWidget {
  const Test_App({super.key});

  static const String Login = "/login";
  static const String Home = "/home";
  static const String Ancestor = "/ancestor";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Login,
      routes: {
        Login: (context) => TestLoginPage(),
        Home: (context) => HomePageScreen(),
        Ancestor: (context) => ExampleAncestorElementSelector()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
