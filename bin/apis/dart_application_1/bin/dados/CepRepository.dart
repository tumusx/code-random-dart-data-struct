import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as httpClient;
import 'model/Cep.dart';

class CepRepositoryImpl implements ICepRepository {
  static final BASE_URL = "https://viacep.com.br/ws/";
  @override
  Future<Cep> getDetailCep(String userCep) async {
    final URL_SEARCHED = BASE_URL + "$userCep/json/";
    var response = await httpClient.get(Uri.parse(URL_SEARCHED));
    try {
      Map<String, dynamic> jsonParsed = jsonDecode(response.body);
      var cepValues = Cep.fromJson(jsonParsed);
      return Future.value(cepValues);
    } catch (exception) {
      print(exception);
      return Future.value(null);
    }
  }
}

abstract class ICepRepository {
  Future<Cep> getDetailCep(String userCep);
}
