import 'package:flutter/material.dart';
import 'package:flutter_application_4/Pages/login_clone_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController Hint = TextEditingController();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginClonePage(
        txtUsername: usernameController,
        txtPassword: passwordController,
      ),
    );
  }
}