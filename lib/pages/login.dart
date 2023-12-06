import 'package:flutter/material.dart';
import 'package:login_page/pages/sub/Input.dart';
import 'package:login_page/pages/sub/input2.dart';

class Login extends StatelessWidget {
  Login({super.key});
  var inp = Input();
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
              Input(
                hintText: 'Username',
                obsqureText: false,
              ),
              const SizedBox(height: 2),
              Input2(hintText: 'Password', obsqureText: true),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'forgot password ?',
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () async {
                  await inp.check_log(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: const Size(250, 30)),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
