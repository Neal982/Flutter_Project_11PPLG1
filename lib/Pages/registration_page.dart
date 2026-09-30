import 'package:flutter/material.dart';
import 'package:flutter_application_4/Component/custom_button.dart';
import 'package:flutter_application_4/Component/custom_textfield.dart';
import 'package:flutter_application_4/controller/confirmreg_ctl.dart';
import 'package:flutter_application_4/controller/registration_ctl.dart';
import 'package:flutter_application_4/routes.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});
  final controller = Get.put(RegistrationCtl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 100),
          CustomTextfield(
            Colors.black,
            txtController: controller.txtname,
            hint: "Input Name ",
          ),
          SizedBox(height: 25),
          CustomTextfield(
            Colors.black,
            txtController: controller.txtphone,
            hint: "Input Phone Number ",
          ),
          SizedBox(height: 25),
          CustomTextfield(
            Colors.black,
            txtController: controller.txtemail,
            hint: "Input Email",
          ),
          SizedBox(height: 25),
          CustomTextfield(
            Colors.black,
            txtController: controller.txtaddress,
            hint: "Input Address ",
          ),
          SizedBox(height: 25),
          Obx(
            () => DropdownButton<String>(
              value: controller.selectedGender.value,
              hint: Text("Select Gender"),
              isExpanded: true,
              items: const [
                DropdownMenuItem(child: Text("Male"), value: "Male"),
                DropdownMenuItem(child: Text("Female"), value: "Female"),
                DropdownMenuItem(child: Text("Other"), value: "Other"),
              ],
              onChanged: (value) {
                controller.selectedGender.value = value;
              },
            ),
          ),
          SizedBox(height: 50),
          CustomButton(
            "Send",
            Colors.blue,
            onPressed: () {
              Get.toNamed(
                Routes.confirm_registration,
                arguments: {
                  "name": controller.txtname.text.toString(),
                  "phone": controller.txtphone.text.toString(),
                  "email": controller.txtemail.text.toString(),
                  "address": controller.txtaddress.text.toString(),
                  "gender": controller.selectedGender.value,
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
