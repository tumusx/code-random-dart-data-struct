import 'dart:ffi';

import 'package:code_random/code_random.dart' as code_random;

void main(List<String> arguments) {
  print('Hello world: ${code_random.calculate()}!');
  var valorA = 10;
  var valorB = 40;
  var valorC = 2.5;
  var resultado = 10 + 40 + 2.5;
  print(resultado);
  var salario = 1000, desconto = 240;
  var conta = salario - desconto;
  print(conta);
  var numero = 3 + (2 * 4) + (10 / 5);
  print(numero);
  var texto1 = "\nmurillo";
  var text2 = 'silva';
  var text3 = '''\n e
  murillo''';

  var nome = texto1 + text2 + text3;
  print(nome);

  var verdadeiro = true;
  var falso = false;
  print('verdadeiro = $verdadeiro');
  print('false = ' "$falso");
  print(''.runtimeType);

  /// descobre a variavel em tempo de execucação
  /**
   * especificacao do tipo de variavel
   */
  const pi = 3.14;

  /// nao podemos alterar seu valor
  double altura = 1.83;
  bool adulto = true;
  String sobrenome = "Alves da Silva";

  print(
      "\nSobrenome: $sobrenome, tamanho do sobrenome: ${sobrenome.length}, adulto: $adulto, pi= $pi, altura = $altura");

  dynamic variavelDinamica = 2.0;
  variavelDinamica = 12;
  variavelDinamica = "murillo";
  variavelDinamica = true;
  print(variavelDinamica);
}
