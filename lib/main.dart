import 'package:flutter/material.dart';
import 'usuario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Usuario u = Usuario(
      codigo: 1,
      login: "gabriel321",
      nome: "gabriel",
      senha: "@senhaforte321"
    );

    return MaterialApp(
      home: Scaffold(
      appBar: AppBar (
        title: const Text("Meus Dados"),
      ),
        body: Center(
          child: Padding(padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
            Text("Nome: ${u.nome}"),
            Text("código: ${u.codigo}"),
            Text("Login: ${u.login}"),
            Text("Senha: ${u.senha}")
              ],
           ),
         ),
        ),
      ),
    );
  }
}

