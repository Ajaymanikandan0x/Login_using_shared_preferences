import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Input2 extends StatelessWidget {
  final hintText;
  final obsqureText;
  final Pass = TextEditingController();
  Input2({super.key, this.hintText, this.obsqureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: Pass,
        style: const TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.w400, wordSpacing: 2),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hintText),
        obscureText: obsqureText,
      ),
    );
  }

  Future<void> check_log(context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('Passs', Pass.text);
    Navigator.pushReplacementNamed(context, '/home');
  }
}
