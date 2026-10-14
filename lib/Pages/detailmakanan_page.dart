import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/makanan_model.dart';
import 'package:flutter_application_4/Component/custom_text.dart';

class DetailmakananPage extends StatelessWidget {
  final MakananModel makanan;
  const DetailmakananPage({super.key, required this.makanan});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Makanan")),
      body: Column(
        children: [
          Column(
            children: [
              Image.network(makanan.gambarMakanan, width: 300, height: 300),
              CustomText(makanan.namaMakanan, textColor: Colors.black, fontSize: 28),
              CustomText(makanan.hargaMakanan, textColor: Colors.green, fontSize: 18),
              CustomText(makanan.ratingMakanan, textColor: Colors.black, fontSize: 18),
              CustomText(makanan.deskripsiMakanan, textColor: Colors.black, fontSize: 18),
              CustomText(makanan.reviewMakanan, textColor: Colors.black, fontSize: 18),
            ],
          ),
        ],
      ),
    );
  }
}
