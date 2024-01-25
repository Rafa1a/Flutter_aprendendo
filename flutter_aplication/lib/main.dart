import 'package:flutter/material.dart';
//import 'package:flutter/animation.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabNavigator(),
    );
  }
}
 
class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}
 
class _TabNavigatorState extends State<TabNavigator> {
  int _selectedIndex = 0;
  List<Widget> _pages = [
    HomeScreen(),
    HomePage(),
  ];
 
  void _onTabSelected(int index) {
     print('index${index}');
    setState(() {
      _selectedIndex = index;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World App"),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "Tarefas",
          ),
        ],
      ),
    );
  }
}
 
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello, World!",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir para a próxima tela'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
 
/////////////////////////////////////////exemplo de drawer
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Drawer Navigation',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//       routes: {
//         '/home': (context) => HomePage(),
//         '/about': (context) => SecondPage(),
//       },
//     );
//   }
// }
 
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Drawer Navigation'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             ListTile(
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/home');
//               },
//             ),
//             ListTile(
//               title: Text('About'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/about');
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Text(
//           'Welcome to the Home Screen!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }


// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Ir para a próxima tela'),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//     );
//   }
// }
 
// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Segunda Tela'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Voltar para a tela anterior'),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//     );
//   }
// }
/////////////////////////////////////////exemplo de bottomNavigationBar
// class MyApp extends StatelessWidget {
//   final List<Widget> screens = [
//     HomeScreen(),
//     FavoritesScreen(),
//     ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: screens.length,
//         child: Scaffold(
//           body: TabBarView(
//             children: screens,
//           ),
//           bottomNavigationBar: Container(
//             // color: Theme.of(context).primaryColor,
//             child: TabBar(
//               tabs: [
//                 Tab(
//                   text: 'Home',
//                   icon: Icon(Icons.home),
//                 ),
//                 Tab(
//                   text: 'Favoritos',
//                   icon: Icon(Icons.favorite),
//                 ),
//                 Tab(
//                   text: 'Perfil',
//                   icon: Icon(Icons.person),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Tela inicial'),
//     );
//   }
// }

// class FavoritesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Tela de favoritos'),
//     );
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Tela de perfil'),
//     );
//   }
// }
/////////////////////////////////////////exemplo de tabbar
// class MyApp extends StatelessWidget {
//   final List<Widget> screens = [
//     HomeScreen(),
//     FavoritesScreen(),
//     ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: screens.length,
//         child: Scaffold(
//           appBar: PreferredSize(
//             preferredSize: Size.fromHeight(kToolbarHeight),
//             child: AppBar(
//               title: TabBar(
//                 tabs: [
//                   Tab(
//                     text: 'Home',
//                     icon: Icon(Icons.home),
//                   ),
//                   Tab(
//                     text: 'Favoritos',
//                     icon: Icon(Icons.favorite),
//                   ),
//                   Tab(
//                     text: 'Perfil',
//                     icon: Icon(Icons.person),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           body: TabBarView(
//             children: screens,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Tela inicial'),
//     );
//   }
// }

// class FavoritesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Tela de favoritos'),
//     );
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Tela de perfil'),
//     );
//   }
// }
/////////////////////////////////////////exemplo de navigator
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Navigator(
//         pages: [
//           MaterialPage(child: HomePage()),
//         ],
//         onPopPage: (route, result) {
//           if (!route.didPop(result)) {
//             return false;
//           }
//           // Perform any necessary cleanup here.
//           return true;
//         },
//       ),
//     );
//   }
// }
 
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Ir para a próxima tela'),
//           onPressed: () {
//             Navigator.of(context).push(MaterialPageRoute(
//               builder: (context) => SecondPage(),
//             ));
//           },
//         ),
//       ),
//     );
//   }
// }
 
// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Segunda Tela'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Voltar para a tela anterior'),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//     );
//   }
// }
/////////////////////////////////////////exemplo de slliver grid usa lazy loading por padrao renderizando a lista que esta na tela
// class Person {
//   final String name;
//   final String surname;

//   Person(this.name, this.surname);
// }

// class MyApp extends StatelessWidget {
//   final List<Person> people = List<Person>.generate(
//     50,
//     (i) => Person('Person $i', 'Surname $i'),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar(
//               title: Text('SliverGrid Example'),
//             ),
//             SliverGrid(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//               ),
//               delegate: SliverChildBuilderDelegate(
//                 (BuildContext context, int index) {
//                   return Container(
//                     color: Colors.blue,
//                     margin: EdgeInsets.all(8.0),
//                     child: Center(
//                       child: Text('Name: ${people[index].name}, Surname: ${people[index].surname}'),
//                     ),
//                   );
//                 },
//                 childCount: people.length,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
/////////////////////////////////////////exemplo de slivergrid
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar(
//               title: Text('SliverGrid Example'),
//             ),
//             SliverGrid(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

//                 crossAxisCount: 3,

//               ),

//               delegate: SliverChildBuilderDelegate(
//                     (BuildContext context, int index) {
//                   return Container(

//                     color: Colors.blue,
//                     margin: EdgeInsets.all(8.0),
//                     child: Center(
//                       child: Text('Item $index'),
//                     ),
//                   );
//                 },
//                 childCount: 10,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
///////////////////////////////////////////exemplo de gridview
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Lista de Itens'),
//         ),
//         body: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//           ),
//           itemCount: 10,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               color: Colors.blue,
//               margin: EdgeInsets.all(8.0),
//               child: Center(
//                 child: Text('Item $index'),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
/////////////////////////////////////////exemplo de sliverlist
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar(
//               title: Text('SliverList Example'),
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                     (BuildContext context, int index) {
//                   return ListTile(
//                     leading: Icon(Icons.circle),
//                     title: Text('Item $index'),
//                   );
//                 },
//                 childCount: 20,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
/////////////////////////////////////////////exemplo de listtile
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Lista de Itens'),
//         ),
//         body: ListView(
//           children: [
//             ListTile(
//               leading: const Icon(Icons.circle),
//               title: const Text('Item 1'),
//             ),
//             ListTile(
//               leading: const Icon(Icons.circle),
//               title: const Text('Item 2'),
//             ),
//             ListTile(
//               leading: const Icon(Icons.circle),
//               title: const Text('Item 3'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
////////////////////////////////////////exemplo listView
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Lista de Itens'),
//         ),
//         body: ListView.builder(
//           itemCount: 10,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               leading: Icon(Icons.circle),
//               title: Text('Item $index'),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
/////////////////////////////////////////////////////////animacao
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Meu App Flutter',
//       home: RotateAnimation(),
//     );
//   }
// }
// class RotateAnimation extends StatefulWidget {
//   @override
//   _RotateAnimationState createState() => _RotateAnimationState();
// }

// class _RotateAnimationState extends State<RotateAnimation>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
 
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 5),
//       vsync: this,
//     )..repeat(reverse: true);
//     _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
//   }
 
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
 
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _animation,
//       child: Container(
//         width: 200,
//         height: 200,
//         color: Colors.blue,
//       ),
//       builder: (BuildContext context, Widget? child) {
//         return Transform.rotate(
//           angle: _animation.value * 2 * 3.14159,
//           child: child,
//         );
//       },
//     );
//   }
// }