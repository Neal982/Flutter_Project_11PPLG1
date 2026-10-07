import 'package:flutter/material.dart';
import 'package:flutter_application_4/Pages/detailmakanan_page.dart';
import 'package:flutter_application_4/controller/listmakanan_controller.dart';
import 'package:get/get.dart';

class ListmakananPage extends StatelessWidget {
  ListmakananPage({super.key});

  final controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Card(
          margin: EdgeInsets.all(15),
          
          child: ListView.builder(
            itemCount: controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listMakanan[index];
              return InkWell(
                onTap: () {
                  Get.to(
                    () => DetailmakananPage(),
                    arguments: {
                      "nama": makanan.namaMakanan,
                      "harga": makanan.hargaMakanan,
                      "gambar": makanan.gambarMakanan,
                      "deskripsi": makanan.deskripsiMakanan,
                      "rating": makanan.ratingMakanan,
                      "review": makanan.reviewMakanan,
                    },
                  );
                },
                child: ListTile(
                  title: Text(makanan.namaMakanan),
                  subtitle: Text(makanan.hargaMakanan , style: TextStyle(color: Colors.green)),
                  trailing: Icon(Icons.food_bank),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
