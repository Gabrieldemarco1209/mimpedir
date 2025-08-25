import 'package:flutter/material.dart';


class TelaHome extends StatelessWidget {
  TelaHome({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela home")),
      body: Center(
        child: Text('Seja bem vindo ao Mim Pedir!!!:3'),
      ),
    );
  }
}