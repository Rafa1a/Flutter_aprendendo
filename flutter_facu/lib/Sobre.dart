import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sobre a Explore Mundo',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Bem-vindo à Explore Mundo, sua agência de viagens preferida!',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nossa Missão:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Proporcionar experiências de viagem inesquecíveis, conectando pessoas a destinos incríveis ao redor do mundo.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nossos Serviços:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Oferecemos uma ampla gama de pacotes de viagem, desde destinos exóticos até aventuras emocionantes. Nossos especialistas estão prontos para ajudar a criar a viagem dos seus sonhos.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Entre em Contato:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Estamos aqui para ajudar! Entre em contato conosco para obter mais informações, fazer reservas ou esclarecer dúvidas.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Explore o Mundo conosco e faça memórias que durarão para sempre!',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      );
    
  }
}
