import 'package:flutter/material.dart';
import 'package:flutter_application_4/Component/custom_button.dart';
import 'package:flutter_application_4/Component/custom_text.dart';
import 'package:flutter_application_4/controller/confirmreg_ctl.dart';
//import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class ConfirmregPage extends StatelessWidget {
  const ConfirmregPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmregCtl());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            CustomText(
              "Name : ${controller.name}",
              textColor: Colors.black,
              fontSize: 17,
            ),
            SizedBox(height: 25),
            CustomText(
              "Phone Number: ${controller.phone}",
              textColor: Colors.black,
              fontSize: 17,
            ),
            SizedBox(height: 25),
            CustomText(
              "Email : ${controller.email}",
              textColor: Colors.black,
              fontSize: 17,
            ),
            SizedBox(height: 25),
            CustomText(
              "Address : ${controller.address}",
              textColor: Colors.black,
              fontSize: 17,
            ),
            SizedBox(height: 25),
            CustomText(
              "Gender : ${controller.selectedGender.value ?? '-'}",
              textColor: Colors.black,
              fontSize: 17,
            ),
            SizedBox(height: 25),
            SizedBox(height: 50),
            CustomButton(
              "Back",
              Colors.blue,
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
