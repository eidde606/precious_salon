import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:precious_hair_salon/main.dart';
import 'package:precious_hair_salon/models/models.dart';
import 'package:precious_hair_salon/screens/create_account.dart';
import 'package:precious_hair_salon/screens/sign_up.dart';
import 'package:precious_hair_salon/themes/default.dart';

import '../widgets/hero_carousel_card.dart';
import './contact_us.dart';
import 'package:precious_hair_salon/models/products_screen.dart';

import 'package:precious_hair_salon/screens/services.dart';

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
          'images/background.png',
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        // decoration: BoxDecoration(gradient: LayoutTheme.of(context).background),
        Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: FloatingActionButton.extended(
              backgroundColor: Colors.black45,
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => (SignUp())),
                  ),
                );
              }),
              label: Text('Sign up')),
          appBar: AppBar(
            bottom: PreferredSize(
              child: Text(
                'Beauty Studio',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              preferredSize: Size.fromHeight(0),
            ),

            backgroundColor: Colors.black45,
            centerTitle: true,
            elevation: 5,
            // flexibleSpace: Container(
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       colors: [
            //         const Color(0xFFFC74BA),
            //         const Color(0xFFFFFFFF),
            //       ],
            //       begin: const FractionalOffset(1.8, 0.8),
            //       end: const FractionalOffset(0.0, 0.0),
            //       stops: [0.0, 1.0],
            //       tileMode: TileMode.clamp,
            //     ),
            //   ),
            // ),
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
                  // Shadow(
                  //   offset: Offset(1.5, 1.5),
                  //   color: Colors.white,
                  // ),
                  // Shadow(
                  //   offset: Offset(-1.5, 1.5),
                  //   color: Colors.white,
                  // ),
                ],
              ),
            ),
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
