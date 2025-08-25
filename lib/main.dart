import 'package:flutter/material.dart';
import 'package:mimpedir/tela_login.dart';
import 'usuario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    /*Usuario u = Usuario(
      codigo: 1,
      login: "gabriel321",
      nome: "gabriel",
      senha: "@senhaforte321"
    );*/

    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: TelaLogin(),
    );
  }
}

