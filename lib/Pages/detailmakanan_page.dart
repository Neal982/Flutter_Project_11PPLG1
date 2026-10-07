import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailmakananPage extends StatelessWidget {
  DetailmakananPage({super.key});

  final args = Get.arguments as Map<String, dynamic>;

  String get nama => args["nama"];
  String get harga => args["harga"];
  String get gambar => args["gambar"];
  String get deskripsi => args["deskripsi"];
  String get rating => args["rating"];
  String get review => args["review"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Makanan")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(gambar , height: 300, width: 300,),
            const SizedBox(height: 30),
            Text(nama, style: TextStyle(fontSize: 18)),
            const SizedBox(height: 5),
            Text(harga, style: TextStyle(color: Colors.green)),
            const SizedBox(height: 5),
            Text(deskripsi, style: TextStyle()),
            const SizedBox(height: 5),
            Text(rating, style: TextStyle()),
            const SizedBox(height: 5),
            Text(review, style: TextStyle()),
          ],
        ),
      ),
    );
  }
}
