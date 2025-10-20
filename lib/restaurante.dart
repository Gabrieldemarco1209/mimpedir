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

  int? get codigo => _codigo;
  String? get nomeRestaurante => _nomeRestaurante;
  String? get nomelatitude => _latitude;
  String? get nomelongitude => _longitude;
  Usuario? get proprietario => _proprietario;
  Tipo? get TipodeCulinaria => _tipodeCulinaria;

  set codigo(int? valor) => _codigo = valor;
  set nome(String? valor) => _nomeRestaurante = valor;
  set longitude(String? valor) => _longitude = valor;
  set latitude(String? valor) => _latitude = valor;
  set proprietario(Usuario? valor) => _proprietario = valor;
  set TipodeCulinaria(Tipo? valor) => _tipodeCulinaria = valor;


  Restaurante({
    int? codigo,
    String? nomeRestaurante,
     String? latitude,
    String? longitude,
    Usuario? proprietario,
    Tipo? tipodeCulinaria,

  }){
    _codigo = codigo;
    _nomeRestaurante = nomeRestaurante;
    _latitude = latitude;
    _longitude = longitude;
    _proprietario = proprietario;
    _tipodeCulinaria = tipodeCulinaria;
  }

  //get nome => null; Foi Trocado por "nomeRestaurante".
  //get codigo => null; Foi acrescentado em baixo.

  /* String? get latitude => _latitude;

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

  get nome => null;
  set codigo(int? value){ _codigo = value;
  }
}*/





