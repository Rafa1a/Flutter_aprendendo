import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App Flutter2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Botão pressionado!');
          },
          child: Text('Pressione-me'),
        ),
      ),
    );
  }
}