import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as httpClient;

import 'dados/CepRepository.dart';
import 'service/CepService.dart';

main() async {
  CepServiceImpl cepService = CepServiceImpl(CepRepositoryImpl());
  var seachedCep = cepService.seachedDetailsCep("7853900");
  seachedCep.then((value) => print(value));
}
