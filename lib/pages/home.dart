// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:precious_hair_salon/main.dart';
import 'package:precious_hair_salon/pages/create_account.dart';
import 'package:precious_hair_salon/pages/sign_up.dart';

import './contact_us.dart';
import 'package:precious_hair_salon/models/products_screen.dart';

import 'package:precious_hair_salon/pages/services.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                        image: AssetImage("assets/images/logo1.jpeg"),
                        fit: BoxFit.fitWidth),
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
                      builder: (context) => ContactUs(),
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
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Sign in'),
          backgroundColor: Colors.pink[100],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUp(),
              ),
            );
          },
        ),
      ),
    );
  }
}
