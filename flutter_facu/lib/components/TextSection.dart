import 'package:flutter/material.dart';


class TextSection extends StatelessWidget {
  final String descricao;

  TextSection({Key? key, required this.descricao,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        descricao,
        softWrap: true,
      ),
    );
  }
}