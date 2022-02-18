// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Services'),
      ),
      body: Table(
        defaultColumnWidth: FixedColumnWidth(120.0),
        border: TableBorder.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 2,
        ),
        children: const [
          TableRow(
            children: [
              TableCell(
                child: Text('Javapoint'),
              ),
              TableCell(
                child: Text('Wash Your Hair!'),
              ),
              TableCell(
                child: Text('Hello!'),
              ),
              TableCell(
                child: Text('Hello!'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
