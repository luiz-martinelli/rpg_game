import 'package:flutter/material.dart';


import '../game.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://c.tenor.com/MiRqSnY6aScAAAAC/rpg-pixel.gif'),
            ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) {
                return const Game();
              }),
              (route) => false,
            );
          },
          child: const Text('Começar'),
         ),
        ],
      ),
    );
  }
}