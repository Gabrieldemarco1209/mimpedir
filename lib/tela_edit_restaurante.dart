import 'package:flutter/material.dart';
import 'package:mimpedir/restaurante.dart';
import 'package:mimpedir/tipo.dart';
import 'banco/restaurante_DAO.dart';
import 'banco/tipo_DAO.dart';



class TelaEditRestaurante extends StatefulWidget {
  //restaurante que será exibido na tela
  static Restaurante restaurante = Restaurante();

  @override
  State<StatefulWidget> createState() {
    return TelaEditRestauranteState();
  }
}

class TelaEditRestauranteState extends State<TelaEditRestaurante> {

  final TextEditingController cdController = TextEditingController();
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController latitudeController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();
  String? culinariaSelecionada;
  List<Tipo> tiposCulinaria =[];
  int? tipoCulinaria;
  int? codigo = TelaEditRestaurante.restaurante.codigo as int;

  void initState(){
    super.initState();
    carregarTipos();
    cdController.text = TelaEditRestaurante.restaurante.codigo.toString()!;
    nomeController.text = TelaEditRestaurante.restaurante.nomeRestaurante!;
    latitudeController.text = TelaEditRestaurante.restaurante.latitude.toString()!;
    longitudeController.text = TelaEditRestaurante.restaurante.longitude.toString()!;
    tipoCulinaria = TelaEditRestaurante.restaurante.TipodeCulinaria?.codigo!;
    culinariaSelecionada = TelaEditRestaurante.restaurante.TipodeCulinaria?.nome!;
  }

  Future<void> carregarTipos() async{
    final lista = await TipoDAO.listarTipos();
    setState(() {
      tiposCulinaria = lista;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro de Restaurante")),
      body: Padding(padding: const EdgeInsets.all(30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Informações do Restaurante: "),
              SizedBox(height: 40),
              Text("Tipo de comida: "),
              DropdownButtonFormField(

                  value: culinariaSelecionada,
                  items: tiposCulinaria.map((tipo){
                    return DropdownMenuItem<String>(
                      value: tipo.nome,
                      child: Text("${tipo.nome}"),
                    );
                  }).toList(),
                  onChanged: (String? value){
                    setState((){
                      culinariaSelecionada = value;
                      Tipo tipoSelecionado = tiposCulinaria.firstWhere(
                            (tipo) => tipo.nome == value,
                      );
                      tipoCulinaria = tipoSelecionado.codigo;//vamos ver
                    });
                  }
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Nome do Restaurante'),
                validator: (String? value) {},
                controller: nomeController,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Latitude'),
                validator: (String? value) {},
                controller: latitudeController,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Longitude'),
                validator: (String? value) {},
                controller: longitudeController,
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () async{
                    final sucesso = await RestauranteDAO.cadRestaurante(
                        nomeController.text, latitudeController.text, longitudeController.text, tipoCulinaria);
                    String msg = 'Erro: não cadastrado. Verifique os dados.';
                    Color corFundo = Colors.red;

                    if(sucesso > 0){
                      msg = '"${nomeController.text}" cadastrado com sucesso! ID: $sucesso';
                      Color corFundo = Colors.green;
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(msg),
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 5),
                        )
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.save),
                      Text("Cadastrar")
                    ],
                  )
              )
            ]
        ),
      ),
    );
  }
}