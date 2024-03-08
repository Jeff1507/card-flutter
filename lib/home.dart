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
              Color(0xFFFA8BFF),
              Color(0xFF2BD2FF),
              Color(0xFF2BFF88),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('cachorro'),
                          Column(
                            children: [Text('chupetao'), Text('auuuuuu')],
                          )
                        ],
                      ),
                      Image.asset(
                        'assets/img/frieren.jpg',
                        width: 100,
                        height: 100,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[Text('sed'), Text('data')],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
