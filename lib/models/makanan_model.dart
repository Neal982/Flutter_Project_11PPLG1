import 'package:flutter/material.dart';

class MakananModel {
  String namaMakanan;
  String hargaMakanan;
  String deskripsiMakanan;
  String reviewMakanan;
  String ratingMakanan;
  String gambarMakanan;

  MakananModel({
    required this.hargaMakanan,
    required this.namaMakanan,
    required this.deskripsiMakanan,
    required this.gambarMakanan,
    required this.ratingMakanan,
    required this.reviewMakanan,
  });
}
