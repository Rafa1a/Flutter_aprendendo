import 'package:flutter/material.dart';

class Contatos extends StatelessWidget {
   Contatos({Key? key}) : super(key: key);

  final List<String> contacts = [
    'Contact 1',
    'Contact 2',
    'Contact 3',
    // Adicione mais contatos aqui
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index]),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.message),
            onTap: () {
              print('Contact $index clicked');
            },
          );
        },
      ),
    );
  }
}