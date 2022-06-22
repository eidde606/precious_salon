import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 251, 196, 214),
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: (() => Navigator.of(context).pop(context)),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF4B0C6),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contact Me',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'Feel free to contact us',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white54,
                      filled: true,
                      hintText: "Name",
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white54,
                      filled: true,
                      hintText: "Email",
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    maxLines: 7,
                    maxLength: 1000,
                    decoration: InputDecoration(
                      fillColor: Colors.white54,
                      filled: true,
                      hintText: "Message",
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  MaterialButton(
                    height: 60.0,
                    minWidth: double.infinity,
                    color: Colors.white38,
                    onPressed: (() {}),
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
