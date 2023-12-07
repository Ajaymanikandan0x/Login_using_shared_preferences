import 'package:flutter/material.dart';
import 'package:login_page/pages/sub/Listview.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.pink[800],
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => allert(context),
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          color: Colors.grey[400],
          child: const Listview(),
        ));
  }

  Future<void> remove(context) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('Pass');
      await prefs.remove('User');
      Navigator.pushNamedAndRemoveUntil(context, '/log', (route) => false);
    } catch (e) {
      print('Error: $e');
    }
  }

  void allert(context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Exit'),
          content: const Text('Do you want to exit'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('No')),
            TextButton(
                onPressed: () => remove(context), child: const Text('Yes'))
          ],
        ),
      );
}
