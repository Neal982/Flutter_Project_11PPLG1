import 'package:flutter_application_4/Pages/detailmakanan_page.dart';
import 'package:flutter_application_4/models/makanan_model.dart';
import 'package:get/get.dart';

class ListmakananController extends GetxController {
  RxList<MakananModel> listMakanan = [
    MakananModel(
      hargaMakanan: "Rp 12.000",
      namaMakanan: "Mie Ayam",
      deskripsiMakanan: "Mie ayam dengan kuah gurih dan topping ayam suwir.",
      gambarMakanan: "lib/assets/images/mie_ayam.jpg",
      ratingMakanan: "4.5",
      reviewMakanan: "Enak banget, porsinya pas!",
    ),
    MakananModel(
      hargaMakanan: "Rp 14.000",
      namaMakanan: "Ayam Bakar",
      deskripsiMakanan: "Ayam bakar manis pedas dengan sambal.",
      gambarMakanan: "lib/assets/images/ayam_bakar.jpg",
      ratingMakanan: "3.7",
      reviewMakanan: "Lumayan, tapi agak kering.",
    ),
    MakananModel(
      hargaMakanan: "Rp 15.000",
      namaMakanan: "Ayam Geprek",
      deskripsiMakanan: "Ayam geprek level 1-5.",
      gambarMakanan: "lib/assets/images/ayam_geprek.jpg",
      ratingMakanan: "4.7",
      reviewMakanan: "Pedasnya pas, cocok buat pecinta pedas.",
    ),
    MakananModel(
      hargaMakanan: "Rp 17.000",
      namaMakanan: "Ayam Penyet",
      deskripsiMakanan: "Ayam penyet dengan lalapan dan sambal.",
      gambarMakanan: "lib/assets/images/ayam_penyet.jpg",
      ratingMakanan: "1.0",
      reviewMakanan: "Kurang juicy, agak kecewa.",
    ),
    MakananModel(
      hargaMakanan: "Rp 20.000",
      namaMakanan: "Ayam Serundeng",
      deskripsiMakanan: "Ayam Serundeng dengan bumbu special",
      gambarMakanan: "lib/assets/images/ayam_serundeng.jpg",
      ratingMakanan: "3.2",
      reviewMakanan: "Rasa oke, tapi harganya agak mahal.",
    ),
  ].obs;
}
