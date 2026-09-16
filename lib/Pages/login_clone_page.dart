import 'package:flutter/material.dart';
import 'package:flutter_application_4/Component/custom_button.dart';
import 'package:flutter_application_4/Component/custom_text.dart';
import 'package:flutter_application_4/Component/custom_textfield.dart';

class LoginClonePage extends StatelessWidget {
  final TextEditingController txtUsername;
  final TextEditingController txtPassword;

  const LoginClonePage({
    super.key,
    required this.txtUsername,
    required this.txtPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 33),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Align(
              alignment: Alignment.topLeft,
              child:Icon (Icons.arrow_back, size: 20, color: Colors.white),
            ),
            SizedBox(height: 10,),
            CustomText("English (US)", textColor: const Color.fromARGB(255, 114, 110, 110), fontSize: 16),
            SizedBox(height: 300,),
            const SizedBox(height: 0),
            CustomTextfield(
              Colors.white,
              txtController: txtUsername,
              hint: "Username",
            ),
            const SizedBox(height: 20),
            CustomTextfield(
              Colors.white,
              txtController: txtPassword,
              hint: "Password",
            ),
            const SizedBox(height: 30),
            CustomButton(
              "Log in",
              const Color.fromARGB(255, 0, 100, 224),
              onPressed: () {},
            ),
            SizedBox(height: 20,),
            CustomText("Forgot password?", textColor: Colors.white, fontSize: 16),
            SizedBox(height: 220,),
            CustomText("Meta", textColor: Colors.white, fontSize: 16)
          ],
        ),
      ),
    );
  }
}
