// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:precious_hair_salon/pages/contact_us.dart';
import 'package:precious_hair_salon/models/products_screen.dart';
import 'package:precious_hair_salon/services.dart';

void main() {
  runApp(HairProducts());
}

class HairProducts extends StatelessWidget {
  const HairProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beauty Studio',
      home: Scaffold(
        endDrawer: Drawer(
          backgroundColor: Colors.pink[100],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                child: DrawerHeader(
                  child: Text(''),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/longbeauty.gif"),
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Hair Products',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Products(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Services',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Services(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Contact us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Contactus(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          centerTitle: true,
          title: Text(
            'Beauty Studio',
            style: TextStyle(
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/angela.gif"),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
