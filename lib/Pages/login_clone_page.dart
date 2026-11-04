import 'package:flutter/material.dart';
import 'package:flutter_application_4/Component/custom_button.dart';
import 'package:flutter_application_4/Component/custom_text.dart';
import 'package:flutter_application_4/Component/custom_textfield.dart';
import 'package:flutter_application_4/Pages/main_menu_page.dart';
import 'package:flutter_application_4/controller/login_clone_controller.dart';
import 'package:get/get.dart';

// import 'package:flutter_application_4/Component/custom_textfield.dart';

class LoginClonePage extends StatelessWidget {
  LoginClonePage({super.key});

  final controller = Get.put(LoginCloneController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 33),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 40),
            Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.arrow_back, size: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            CustomText(
              "English (US)",
              textColor: const Color.fromARGB(255, 114, 110, 110),
              fontSize: 16,
            ),
            const SizedBox(height: 40),
            Image.asset('lib/assets/images/IG_logo.jpg'),
            const SizedBox(height: 40),
            CustomTextfield(
              Colors.white,
              txtController: controller.txtUsername,
              hint: "Username",
            ),
            const SizedBox(height: 20),
            CustomTextfield(
              Colors.white,
              txtController: controller.txtPassword,
              hint: "Password",
            ),
            const SizedBox(height: 30),
            Obx(
              () => controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : CustomButton(
                      "Login",
                      const Color.fromARGB(255, 0, 100, 224),
                      onPressed: () {
                        controller.login();
                      },
                    ),
            ),
            SizedBox(height: 20),
            CustomText(
              "Forgot password?",
              textColor: Colors.white,
              fontSize: 16,
            ),
            // SizedBox(height: 200),
            // CustomText("Meta", textColor: Colors.white, fontSize: 16),
          ],
        ),
      ),
    );
  }
}
