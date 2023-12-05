import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final hintText;
  final obsqureText;
  const Input({super.key, required this.hintText, required this.obsqureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
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
}
