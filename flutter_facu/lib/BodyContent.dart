import 'package:flutter/material.dart';
import './components/TitleSection.dart';
// import './components/ButtonSection.dart';
// import './components/TextSection.dart';
class BodyContent extends StatelessWidget {
  final String image;
  final String title;
  final String sub_title;
  // final String description;
  // final int starCount;

  BodyContent({
    Key? key,
    required this.image,
    required this.title,
    required this.sub_title,
    // required this.description,
    // required this.starCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          image,
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        TitleSection(title: title, subTitle: sub_title),
        // const ButtonSection(),
        // TextSection(),
        // Adicione outras seções conforme necessário
      ],
    );
  }
}