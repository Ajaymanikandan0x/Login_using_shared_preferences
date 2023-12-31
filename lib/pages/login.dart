import 'package:flutter/material.dart';
import 'package:login_page/pages/sub/Input.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[800],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                  backgroundImage: AssetImage('assets/prof.png'),
                  maxRadius: 70.0),
              const SizedBox(height: 10),
              Text(
                'welcome back you\'ve been missed ',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              Input(),
            ],
          ),
        ),
      ),
    );
  }
}
