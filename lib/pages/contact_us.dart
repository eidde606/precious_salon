// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

void main() => runApp(Contactus());

class Contactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Contacts',
          ),
          backgroundColor: Colors.pink.shade100,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.pink[100],
        body: ContactUs(
          cardColor: Colors.white,
          textColor: Colors.black,
          logo: AssetImage('assets/images/angela2.jpg'),
          email: "angelagaibort@hotmail.com",
          companyName: 'Beauty Studio',
          companyColor: Colors.white,
          dividerThickness: 2,
          dividerColor: Colors.white,
          phoneNumber: '1+ 804-735-8835',
          tagLine: 'Hair Stylist',
          taglineColor: Colors.white,
          instagram: '',
          facebookHandle: '',
        ),
      ),
    );
  }
}
