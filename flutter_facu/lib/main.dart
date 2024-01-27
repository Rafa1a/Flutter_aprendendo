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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aprendendo Flutter'),
        ),
        body: TravelListView(
        travels: [
          Travel(
            image: 'lib/images/lago.jpg',
            title: 'rafa',
            sub_title: 'rafa',
            description: 'Descrição do lago',
            starCount: 5,
          ),
          // Adicione outros Travel conforme necessário
        ],
      ),
      ),
    );
  }
}


class Travel {
  final String image;
  final String title;
  final String sub_title;
  final String description;
  final int starCount;

  Travel({
    required this.image,
    required this.title,
    required this.sub_title,
    required this.description,
    required this.starCount,
  });
}

class TravelListView extends StatelessWidget {
  final List<Travel> travels;

  TravelListView({Key? key, required this.travels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: travels.length,
      itemBuilder: (context, index) {
        final travel = travels[index];

        return BodyContent(
          image: travel.image,
          title: travel.title,
          sub_title: travel.sub_title,
          // description: travel.description,
          // starCount: travel.starCount,
        );
      },
    );
  }
}