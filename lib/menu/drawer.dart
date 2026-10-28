import 'package:flutter/material.dart';
import 'package:flutter_application_4/controller/menu_drawer_controller.dart';
import 'package:get/get.dart';

class NavDrawer extends StatelessWidget {
  NavDrawer({super.key});
  final menuDrawerController = Get.put(MenuDrawerController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Obx(
            () => ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text("Home"),
              selected: menuDrawerController.selectedIndex.value == 0,
              onTap: () {
                menuDrawerController.changePage(0);
                Get.back();
              },
            ),
          ),
          Obx(
            () => ListTile(
              leading: Icon(Icons.history_outlined),
              title: Text("History"),
              selected: menuDrawerController.selectedIndex.value == 1,
              onTap: () {
                menuDrawerController.changePage(1);
                Get.back();
              },
            ),
          ),
          Obx(
            () => ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("Profile"),
              selected: menuDrawerController.selectedIndex.value == 2,
              onTap: () {
                menuDrawerController.changePage(2);
                Get.back();
              },
            ),
          ),
        ],
      ),
    );
  }
}
