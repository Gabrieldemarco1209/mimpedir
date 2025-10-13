import 'package:mimpedir/banco/database_helper.dart';
import 'package:mimpedir/banco/usuario_dao.dart';
import 'package:mimpedir/usuario.dart';

import '../restaurante.dart';


class RestauranteDAO{

  static Future<int> cadRestaurante(String? nome, String? latitude, String? longitude, int? tipo) async{
    final db = await DatabaseHelper.getDataBase();

    final dadosRestaurante = {
      'nm_rstaurante': nome,
      'latitude_restaurante': latitude,
      'longitude_restaurante': longitude,
      'cd_tipo': tipo,
      'cd_usuario': UsuarioDAO.usuarioLogado.codigo
    };

    try{
      final idRestaurante = await db.insert('tb_restaurante', dadosRestaurante);
      return idRestaurante;
    }catch(e){
      print("Erri ao cadastrar: $e");
      return -1;
    }
  }

  static Future<List<Restaurante>> listarTodos() async {
    final db = await DatabaseHelper.getDataBase();
    final resultado = await db.query('tb_restaurante',
      where: 'cb_usuario = ?',
      whereArgs: [UsuarioDAO.usuarioLogado.codigo]
    );

    return resultado.map((mapa) {
      return Restaurante(
          codigo: mapa['cd_restaurante'] as int,
          nomeRestaurante: mapa['nm_restaurante'] as String
      );
    }).toList();
  }



}