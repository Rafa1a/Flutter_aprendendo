import 'package:flutter/material.dart';
import 'BodyContent.dart';
import 'Contatos.dart';
import 'Sobre.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);  
  final List<Widget> screens = [
      BodyContent(
            travels: [
              Travel(
                image: 'lib/images/lago.jpg',
                title: 'Lago',
                sub_title:'Kandersteg, Switzerland',
                descricao:'O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses. Situado a 1.578 metros acima do nível do mar, é um dos lagos alpinos mais amplos. Um passeio de teleférico a partir de Kandersteg, seguido por meia hora de caminhada por pastagens e floresta de pinheiros, leva você ao lago, que aquece até 20 graus Celsius no verão. As atividades desfrutadas aqui incluem remo e andar no tobogã de verão. ',
              ),
              Travel(
                image: 'lib/images/montanhas.jpg',
                title: 'Montanhas do Kisar',
                sub_title:'Kisar Valley, Suíça',
                descricao: 'Montanhas do Kisar, um destino deslumbrante localizado em Kandersteg, Suíça. Explore a majestosa beleza natural dessas montanhas, onde picos imponentes tocam o céu. Desfrute de trilhas cênicas, vistas panorâmicas e a serenidade que só as Montanhas do Kisar podem oferecer. Uma experiência inesquecível aguarda por você neste refúgio alpino.'
,
              ),
              Travel(
                image: 'lib/images/saara.jpg',
                title: 'Deserto do Saara',
                sub_title: 'Northern Africa',
                descricao: 'Explore a vastidão e a beleza única do Deserto do Saara, uma maravilha natural que se estende por grande parte do norte da África. Sinta a imensidão do cenário desértico, com suas dunas ondulantes e paisagens de tirar o fôlego. Testemunhe pores do sol magníficos que pintam o céu com tonalidades deslumbrantes. Uma jornada fascinante aguarda aqueles que buscam a aventura no coração do Deserto do Saara.'
              ),
            ],
          ),
          Contatos(),
          Sobre(),
    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aprendendo Flutter',
      home: DefaultTabController(  // Adicione este widget
          length: screens.length,  // Número de tabs
          child: Scaffold(
            appBar: AppBar(
              title: TabBar(  // Adicione este widget
                tabs:  [
                  Tab(text: 'Destinos',
                  icon: Icon(Icons.flight),), 
                  Tab(text: 'Contatos',
                  icon: Icon(Icons.call),),
                  Tab(text: 'Sobre',
                  icon: Icon(Icons.group),), 
                   // Adicione as tabs aqui
                ],
              ),
            
            ),
            body: TabBarView(
              children: screens,
            ),
        ),
      ),
    );
  }
}