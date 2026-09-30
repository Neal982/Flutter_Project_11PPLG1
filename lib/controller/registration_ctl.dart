import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RegistrationCtl extends GetxController {
  final txtname = TextEditingController();
  final txtphone = TextEditingController();
  final txtemail = TextEditingController();
  final txtaddress = TextEditingController();

  var selectedGender = Rxn<String>();
}
