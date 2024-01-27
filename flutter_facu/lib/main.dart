import 'package:flutter/material.dart';
import 'BodyContent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aprendendo Flutter',
      home: DefaultTabController(  // Adicione este widget
        length: 2,  // Número de tabs
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(  // Adicione este widget
              tabs: const [
                Tab(text: 'Tab 1'),  // Adicione as tabs aqui
                Tab(text: 'Tab 2'),
              ],
            ),
           
          ),
          body: BodyContent(
            travels: [
              Travel(
                image: 'lib/images/lago.jpg',
                title: 'Lago',
                sub_title:'Kandersteg, Switzerland'
              ),
              Travel(
                image: 'lib/images/lago.jpg',
                title: 'Lago',
                sub_title:'Kandersteg, Switzerland'
              ),
              // Adicione outros Travel conforme necessário
            ],
          ),
        ),
      ),
    );
  }
}