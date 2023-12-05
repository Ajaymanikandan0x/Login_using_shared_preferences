import 'package:flutter/material.dart';
import 'package:login_page/pages/Home.dart';
import 'package:login_page/pages/login.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const Home()
      },
    ));
