/*import 'package:flutter/material.dart';

class TelarRestaurante extends StatelessWidget{
  TelaRestaurante({super.key});

  // ATIVIDADE - Em Andamento...

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Restaurante")),
      body: Padding(padding: const EdgeInsets.all(30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Informações do Restaurante: "),
              SizedBox(height:40),
              Text("Tipo de comida: "),
              DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(value: "Japonesa", child: Text("Japonesa")),
                    DropdownMenuItem(value: "Italiana", child: Text("Italiana")),
                    DropdownMenuItem(value: "Brasileira", child: Text("Brasileira")),
                  ],
                  onChanged: (value){}),

              /*   |
                   |
                   V
              Formas de texto para Editar algumas informações*/

              TextFormField(
                decoration: const InputDecoration(hintText: 'Código do Restaurante'),
                validator: (String? value) {},
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Nome do Restaurante'),
                validator: (String? value) {},
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Latitude'),
                validator: (String? value) {},
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Longitude'),
                validator: (String? value) {},
              ),
              ElevatedButton(onPressed: (){}, child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.save),
                  Text("Salvar")
                ],
              ))
            ]
        ),
      ),
    );
  }
}*/