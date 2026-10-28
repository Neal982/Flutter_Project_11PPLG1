import 'package:flutter/material.dart';
import 'package:flutter_application_4/controller/menu_drawer_controller.dart';
import 'package:flutter_application_4/menu/drawer.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
 MenuDrawerPage({super.key});
  final menuDrawerController = Get.put(MenuDrawerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer")),
      drawer: NavDrawer(),
      body: Obx(() => menuDrawerController.listPages[menuDrawerController.selectedIndex.value]),
    );
  }
}
