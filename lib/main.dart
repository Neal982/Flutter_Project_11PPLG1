import 'package:flutter/material.dart';
//import 'package:flutter_application_4/Pages/calculator_page.dart';
import 'package:flutter_application_4/routes.dart';
//import 'package:flutter_application_4/Pages/login_clone_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final TextEditingController usernameController = TextEditingController();
    // final TextEditingController passwordController = TextEditingController();

    return GetMaterialApp(
      title: "My App",
      initialRoute: Routes.listmakanan,
      getPages: Routes.pages,
      // LoginClonePage(
      //   txtUsername: usernameController,
      //   txtPassword: passwordController,
      // ),
    );
  }
}
