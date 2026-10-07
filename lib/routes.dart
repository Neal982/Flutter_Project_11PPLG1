import 'package:flutter_application_4/Pages/confirmreg_page.dart';
import 'package:flutter_application_4/Pages/detailmakanan_page.dart';
import 'package:flutter_application_4/Pages/registration_page.dart';
import 'package:flutter_application_4/Pages/listmakanan_page.dart';
import 'package:flutter_application_4/Pages/detailmakanan_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  // ignore: constant_identifier_names
  static const String confirm_registration = "/confirm_registration";
  static const String listmakanan = "/listmakanan";
  static const String detailmakanan = "/detailmakanan";


  static final pages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmregPage()),
    GetPage(name: listmakanan, page: () => ListmakananPage()),
    GetPage(name: detailmakanan, page: () => DetailmakananPage()),
  ];
}
