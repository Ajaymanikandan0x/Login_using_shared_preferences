import 'package:flutter/material.dart';

class chat_page extends StatelessWidget {
  final String name;
  chat_page({super.key, required this.name});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: 30, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink[800],
        ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Bla'),
        ),
      );
}
