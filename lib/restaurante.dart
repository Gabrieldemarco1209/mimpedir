import 'package:mimpedir/tipo.dart';
import 'package:mimpedir/usuario.dart';
import 'tipo.dart';
import 'usuario.dart';
import 'banco/usuario_dao.dart';


class Restaurante{
  int? _codigo;
  String? _nomeRestaurante;
  String? _latitude;
  String? _longitude;
  Usuario? _proprietario;
  Tipo? _tipodeCulinaria;

  Restaurante({int? codigo, String? nomeRestaurante, latitude, longitude}){
    _codigo = codigo;
    _nomeRestaurante = nomeRestaurante;
    _latitude = latitude;
    _longitude = longitude;
  }

  //get nome => null; Foi Trocado por "nomeRestaurante".
  //get codigo => null; Foi acrescentado em baixo.

  String? get latitude => _latitude;

  set latitude(String? value){
    _latitude = value;
  }

  String? get longitude => _longitude;

  set longitude(String? value){
    _longitude = value;
  }

  String? get nomeRestaurante => _nomeRestaurante;

  set nomeRestaurante(String? value){
    _nomeRestaurante = value;
  }

  int? get codigo => _codigo;
  set codigo(int? value){ _codigo = value;
  }
}










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