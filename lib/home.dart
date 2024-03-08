import 'package:flutter/material.dart';

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
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Text('flutter'),
            ),
          ),
        ),
      ),
    );
  }
}
