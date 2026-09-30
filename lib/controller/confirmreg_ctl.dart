import 'package:get/get.dart';

class ConfirmregCtl extends GetxController {
  var selectedGender = Rxn<String>();
  late String name;
  late String phone;
  late String email;
  late String address;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments as Map<String, dynamic>?;

    name = arguments?["name"] ?? "";
    phone = arguments?["phone"] ?? "";
    email = arguments?["email"] ?? "";
    address = arguments?["address"] ?? "";
    selectedGender.value = arguments?["gender"];
  }
}
