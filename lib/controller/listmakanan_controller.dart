import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/makanan_model.dart';
import 'package:get/get.dart';

class ListmakananController extends GetxController{
  List<MakananModel> listMakanan = [
  MakananModel(
    hargaMakanan: "Rp 12.000",
    namaMakanan: "Mie Ayam",
    deskripsiMakanan: "Mie ayam dengan kuah gurih dan topping ayam suwir.",
    gambarMakanan: "https://tse1.mm.bing.net/th/id/OIP.Bhm8hzCso0Dfx3zpN-j4qQHaHa?r=0&pid=Api&h=220&P=0",
    ratingMakanan: "4.5",
    reviewMakanan: "Enak banget, porsinya pas!",
  ),
  MakananModel(
    hargaMakanan: "Rp 13.000",
    namaMakanan: "Sate Ayam",
    deskripsiMakanan: "Sate ayam dengan bumbu kacang.",
    gambarMakanan: "http://darirasa.com/wp-content/uploads/2024/12/46ce410c-1a95-4b71-aa97-1f30d25a7012_Go-Biz_20221226_153102.jpg",
    ratingMakanan: "5.0",
    reviewMakanan: "Satenya lembut dan bumbunya nendang.",
  ),
  MakananModel(
    hargaMakanan: "Rp 14.000",
    namaMakanan: "Ayam Bakar",
    deskripsiMakanan: "Ayam bakar manis pedas dengan sambal.",
    gambarMakanan: "https://cf.shopee.co.id/file/sg-11134201-22120-wvkpxterpmlvbe",
    ratingMakanan: "3.7",
    reviewMakanan: "Lumayan, tapi agak kering.",
  ),
  MakananModel(
    hargaMakanan: "Rp 10.000",
    namaMakanan: "Ayam Goreng",
    deskripsiMakanan: "Ayam goreng krispi",
    gambarMakanan: "https://down-id.img.susercontent.com/file/37cb02ae1ed424d318f300ed703c0b47",
    ratingMakanan: "4.0",
    reviewMakanan: "Krispi dan gurih, recommended.",
  ),
  MakananModel(
    hargaMakanan: "Rp 15.000",
    namaMakanan: "Ayam Geprek",
    deskripsiMakanan: "Ayam geprek level 1-5.",
    gambarMakanan: "https://tse2.mm.bing.net/th/id/OIP.axnSHT0-EglKlzbsOG0GpwHaHa?r=0&pid=Api&h=220&P=0",
    ratingMakanan: "4.7",
    reviewMakanan: "Pedasnya pas, cocok buat pecinta pedas.",
  ),
  MakananModel(
    hargaMakanan: "Rp 17.000",
    namaMakanan: "Ayam Penyet",
    deskripsiMakanan: "Ayam penyet dengan lalapan dan sambal.",
    gambarMakanan: "https://tse1.mm.bing.net/th/id/OIP.CbbJ3CjsSPMEoZDJ6JzInwHaHa?r=0&pid=Api&h=220&P=0",
    ratingMakanan: "1.0",
    reviewMakanan: "Kurang juicy, agak kecewa.",
  ),
  MakananModel(
    hargaMakanan: "Rp 20.000",
    namaMakanan: "Ayam Serundeng",
    deskripsiMakanan: "Ayam Serundeng dengan bumbu special",
    gambarMakanan: "https://tse1.mm.bing.net/th/id/OIP.LVTAPNo5yEY5dAQp-QmIzAHaHa?r=0&pid=Api&h=220&P=0",
    ratingMakanan: "3.2",
    reviewMakanan: "Rasa oke, tapi harganya agak mahal.",
  ),
];
}