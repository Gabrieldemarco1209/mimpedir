import 'package:flutter/material.dart';
import 'package:mimpedir/tela_home.dart';
import 'usuario.dart';

class TelaLogin extends StatelessWidget{
  TelaLogin({super.key});

  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

      Usuario u = Usuario(
      codigo: 456,
      senha: 'cosmic',
      login: 'fire',
      nome: 'boss'
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Tela de Login")),
        body: Padding(padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Usuário'),
              controller: usuarioController,
            ),
            const SizedBox(height: 20,),
            TextField(
              decoration: const InputDecoration(labelText: 'Senha'),
              controller: senhaController,
              obscureText: true,
            ),
            const SizedBox(height: 40),
            ElevatedButton(onPressed: (){
              if(u.login == usuarioController.text && u.senha == senhaController.text){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TelaHome())
              );
              }else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Login: ${usuarioController
                        .text} senha: ${senhaController.text}"))
                );
              }
            }, child: Text("Login"))
          ],
        ),
        )
    );
  }
}
