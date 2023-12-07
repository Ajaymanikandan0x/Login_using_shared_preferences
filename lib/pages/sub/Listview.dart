import 'package:flutter/material.dart';
import 'package:login_page/pages/chat_page.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => chat_page(name: 'Name${index + 1}'),
              ),
            ),
            leading: index % 2 == 0
                ? const CircleAvatar(
                    maxRadius: 40,
                    backgroundImage: AssetImage('assets/profile1.png'),
                  )
                : even(),
            title: Text(
              'Name ${index + 1}',
              style: const TextStyle(fontSize: 20),
            ),
            subtitle: Text('Contact ${index + 1}'),
            trailing: Text('${index + 1} :00 pm'),
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(color: Colors.grey[600]),
      itemCount: 15,
    );
  }

  Widget even() => const SizedBox(
        height: 80.0,
        width: 80.0,
        child: Image(image: AssetImage('assets/profile2.png')),
      );
}
