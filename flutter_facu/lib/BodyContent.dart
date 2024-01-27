import 'package:flutter/material.dart';
import './components/TitleSection.dart';
import './components/ButtonSection.dart';
import './components/TextSection.dart';

class Travel {
  final String image;
  final String title;
  final String sub_title;
  // final String description;
  // final int starCount;

  Travel({
    required this.image,
    required this.title,
    required this.sub_title,
    // required this.description,
    // required this.starCount,
  });
}

class BodyContent extends StatelessWidget {
  final List<Travel> travels;

  BodyContent({Key? key, required this.travels}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: travels.length,
          itemBuilder: (context, index) {
            final travel = travels[index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image.asset(
                      travel.image,
                      width: MediaQuery.of(context).size.width,
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    TitleSection(title: travel.title, subTitle: travel.sub_title),
                    const ButtonSection(),
                    TextSection(),
                  ],
                ),
              ),
            );  
          },
        ),
        Positioned(  // Adicione este widget
          right: 10,  // Ajuste a posição conforme necessário
          top: 120,  // Ajuste a posição conforme necessário
          child: FloatingActionButton(  // Adicione este widget
            onPressed: () {
              // Adicione a ação do botão aqui
            },
            child: Icon(Icons.arrow_forward),
          ),
        ),
      ],
    );
  }
}
