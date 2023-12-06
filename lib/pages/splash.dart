import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () => get_log(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // stops: [0.5, .10],
              colors: [Colors.blue, Colors.redAccent]),
        ),
        child: const Center(
            child: SpinKitWaveSpinner(
          color: Colors.white,
          size: 50.0,
        )),
      ),
    );
  }

  Future<void> get_log(context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final save_data = prefs.getString('value');
    if (save_data != null) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      Navigator.pushReplacementNamed(context, '/log');
    }
  }
}
