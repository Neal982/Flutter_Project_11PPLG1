import 'package:flutter/material.dart';
import 'package:flutter_application_4/menu/history.dart';
import 'package:flutter_application_4/menu/home.dart';
import 'package:flutter_application_4/menu/profile.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages= [
    HomePage(),HistoryPage(),ProfilePage(),
  ];

}
