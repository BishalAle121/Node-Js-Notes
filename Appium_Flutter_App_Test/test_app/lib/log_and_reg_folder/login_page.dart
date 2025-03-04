import 'package:flutter/material.dart';
import 'package:test_app/component_widget/componenet_button.dart';
import 'package:test_app/component_widget/component_text_form_field.dart';
import 'package:test_app/main.dart';

class TestLoginPage extends StatefulWidget {
  const TestLoginPage({super.key});

  @override
  State<TestLoginPage> createState() => _TestLoginPageState();
}

class _TestLoginPageState extends State<TestLoginPage> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  String loginStatus = "failed";
  final _keyform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _keyform,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ComponentTextFormField(
              //   key: Key("emailText"),
              //   checkKey: ValueKey("email_input"),
              //   label: "Email Id",
              //   textHint: "Enter Email Id",
              //   Validator: (value) {
              //     if (value == null || value.isEmpty) {
              //       return "Please enter a email";
              //     }
              //     return null;
              //   },
              //   controller: _controllerEmail,
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              // ComponentTextFormField(
              //   key: Key("passwordText"),
              //   checkKey: ValueKey("password_input"),
              //   label: "Password",
              //   textHint: "Enter Password",
              //   Validator: (value) {
              //     if (value == null || value.isEmpty) {
              //       return "Please enter a password";
              //     }
              //     return null;
              //   },
              //   controller: _controllerPassword,
              // ),
              TextFormField(
                key: ValueKey('username'),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder()),
                controller: _controllerEmail,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a username";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 30,
              ),
              // ComponenetButton(
              //     key: Key("loginbtn"),
              //     checkButn: ValueKey("login_button"),
              //     Label: "Login",
              //     onPress: () {
              //       if (_keyform.currentState!.validate()) {
              //         print("Success");
              //         loginStatus = "pass";
              //         Navigator.pushNamed(context, Test_App.Home);
              //       }
              //     }),
              TextFormField(
                key: ValueKey('password'),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock), border: OutlineInputBorder()),
                controller: _controllerPassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a password";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_keyform.currentState!.validate()) {
                        Navigator.pushNamed(context, Test_App.Home);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    child: Text(
                      "continue",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
