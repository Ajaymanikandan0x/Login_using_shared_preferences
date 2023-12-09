import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Input extends StatelessWidget {
  final user = TextEditingController();
  final pass = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final String username = 'testuser';
  final String password = 'test@123';

  Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: user,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                wordSpacing: 2,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Username',
              ),
              obscureText: false,
              validator: (value) {
                if (value == null ||
                    value!.isEmpty ||
                    !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                  return "Please enter a correct name";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: pass,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                wordSpacing: 2,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Password',
              ),
              obscureText: true,
              validator: (value) {
                if (value!.length < 4) {
                  return "Enter minimum 4 characters.";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  checkLog(context);
                }
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
    );
  }

  Future<void> checkLog(context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (user.text == username && pass.text == password) {
      prefs.setString('User', username);
      prefs.setString('Pass', password);
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.red,
        content: Text('Username and password cannot match'),
      ));
    }
  }
}
