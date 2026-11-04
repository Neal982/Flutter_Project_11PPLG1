import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/Pages/main_menu_page.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginCloneController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("error", "username and password must be filled");
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");
        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;
        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          if (data['status'] == true) {
            Get.snackbar("Success", data['message']);
            Get.off(() =>  MainMenuPage());
          } else {
            Get.snackbar("Failed", data['message']);
          }
        } else {
          Get.snackbar("Failed", "Check Internet Connection");
        }
      } catch (e) {
        Get.snackbar("Failed", e.toString());
        print("Error" +e.toString());
      }
    }
  }
}
