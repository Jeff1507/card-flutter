import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'CARD',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          PopupMenuButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: const Text('Minha Conta'),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: const Text('Configurações'),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: const Text('Sair'),
                      onTap: () {},
                    )
                  ])
        ],
      ),
      body: Center(
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('datasssssssssssssssssssssssssssssssss'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('segssssssssssssssssssssssssssssss'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
