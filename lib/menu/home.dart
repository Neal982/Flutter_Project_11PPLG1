import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_4/controller/homePage_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controler = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100,
        child: Obx(
          () => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controler.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controler.listMakanan[index];
              return SizedBox(
                width: 200,
                child: ListTile(
                  title: Text(makanan.namaMakanan),
                  subtitle: Text(
                    makanan.hargaMakanan,
                    style: TextStyle(color: Colors.green),
                  ),
                  trailing: Icon(Icons.food_bank),
                  onTap: () {},
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
