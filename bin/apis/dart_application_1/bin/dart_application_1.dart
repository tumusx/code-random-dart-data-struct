import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as httpClient;

main() async {
  final url = "https://viacep.com.br/ws/74013010/json/";
  var response = await httpClient.get(Uri.parse(url));
  Map<String, dynamic> parsedJson = jsonDecode(response.body);
  final cepDTO = Cep.fromJson(parsedJson);
  print("json: $cepDTO");
  print(response.headers);
}

class Cep {
  late String cep;
  late String logradouro;
  late String complemento;
  late String localidade;
  late String uf;
  late String ibge;
  late String gia;
  late String ddd;
  late String siafi;

  Cep(this.cep, this.logradouro, this.complemento, this.localidade, this.uf, this.ibge, this.gia, this.ddd, this.siafi);

  Cep.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    logradouro = json['logradouro'];
    complemento = json['complemento'];
    localidade = json['localidade'];
    uf = json['uf'];
    ibge = json['ibge'];
    gia = json['gia'];
    ddd = json['ddd'];
    siafi = json['siafi'];
  }

  @override
  String toString() {
    return "$cep, $complemento, $ddd, $gia, $ibge, $localidade, $logradouro, $siafi, $uf";
  }
}
