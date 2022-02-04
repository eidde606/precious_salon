// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class ProductItemsScreen extends StatelessWidget {
  final String productId;
  final String productTitle;
  final String image;

  ProductItemsScreen(this.productId, this.productTitle, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text(
          productTitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 220,
              width: double.maxFinite,
              child: Card(
                child: Image.asset(image),
                elevation: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
