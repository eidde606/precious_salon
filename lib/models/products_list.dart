import 'package:flutter/material.dart';

class Products {
  final String id;
  final String title;
  final Color color;
  final String image;

  const Products(
      {required this.id,
      required this.title,
      this.color = Colors.white,
      required this.image});
}
