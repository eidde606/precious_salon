import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:precious_hair_salon/main.dart';
import 'package:precious_hair_salon/models/models.dart';
import 'package:precious_hair_salon/screens/create_account.dart';
import 'package:precious_hair_salon/screens/product_detail_screen.dart';
import 'package:precious_hair_salon/screens/sign_up.dart';
import 'package:precious_hair_salon/themes/default.dart';

import '../widgets/hero_carousel_card.dart';
import './contact_us.dart';
import 'package:precious_hair_salon/models/products_screen.dart';

import 'package:precious_hair_salon/screens/products_overview_screen.dart';

void main() {
  runApp(HomePage());
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beauty Studio',
      home: HomePage(),
      routes: {
        ProductDetailScreen.routeName: ((context) => ProductDetailScreen())
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(fontSize: 30, fontWeight: FontWeight.normal);
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/background.png',
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        // decoration: BoxDecoration(gradient: LayoutTheme.of(context).background),
        Scaffold(
          backgroundColor: Colors.transparent,
          // floatingActionButton: FloatingActionButton.extended(
          //     backgroundColor: Colors.black45,
          //     onPressed: (() {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: ((context) => (SignUp())),
          //         ),
          //       );
          //     }),
          //     label: Text('Sign up')),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 5,
            bottom: PreferredSize(
              child: Text(
                'Beauty Studio',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              preferredSize: Size.fromHeight(0),
            ),
            title: Text(
              'Angel\'s Precious',
              style: GoogleFonts.courgette(
                textStyle: style,
                shadows: [
                  Shadow(
                    offset: Offset(-1.5, -1.5),
                    color: Colors.blue,
                  ),
                  Shadow(
                    offset: Offset(1.5, -1.5),
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                alignment: Alignment.topRight,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                icon: Icon(Icons.login),
              ),
            ],
          ),
          body: Center(
            child: Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.categories
                    .map((category) => HeroCarouselCard(category: category))
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
