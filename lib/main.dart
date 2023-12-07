import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/pages/Home.dart';
import 'package:login_page/pages/login.dart';
import 'package:login_page/pages/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple,
      textTheme: GoogleFonts.loraTextTheme(),
    ),
    routes: {
      '/': (context) => const Splash(),
      '/log': (context) => const Login(),
      '/home': (context) => const Home()
    },
  ));
}
