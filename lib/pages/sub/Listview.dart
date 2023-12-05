import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: index % 2 == 0
                ? const CircleAvatar(
                    maxRadius: 40,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1433162653888-a571db5ccccf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  )
                : even(),
            title: Text(
              'Name${index + 1}',
              style: const TextStyle(fontSize: 20),
            ),
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
        child: Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1459411552884-841db9b3cc2a?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
      );
}
