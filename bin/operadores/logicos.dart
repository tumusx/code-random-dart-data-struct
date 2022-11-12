void main() {
  var verdadeiro = !false;
  bool falso = false;
  print(falso);
  print(verdadeiro);

  print("verdadeiro = $verdadeiro, falso = f$falso");
  bool teste = falso && true;
  print(teste);
  bool operacao = (3 <= 2) && (3 > 2);
  print(operacao);
  operadoresLogicos();
  ternario();
  decisaoSwitch();

}

void operadoresLogicos() {
  var peso = 10;
  peso = peso + 5;
  print(peso);

  var a, b, c, e, d, f;

  a = 3;
  b = ++a;
  e = 1;
  print("$a, $b");
  f ??= ++e; // se f for nulo, recebe o incremento de e;
  d = c ?? a; // se variavel nula, recebe o valor da segunda
  print(d);
  print(f);

  final numero = 12;
  var par = numero % 2 == 0;
  print(par);

  var multiplo = 3;
  print("numero: $numero é multiplo de $multiplo? ${numero % multiplo == 0}");

  int dividendo = 20,
      divisor = 20;
  var resto = dividendo / divisor;
  var exato = resto == 0;
  print(resto);
  condicionais();
}

void condicionais() {
  if (true) {
    print("verdadeiro");
  } else {
    print('falso');
  }
  final idade = 20;
  if (idade <= 18) {
    print("menor de idade");
  } else {
    print("maior de idade");
  }

  var stringInt = '10';
  var idadeInt = int.parse(stringInt);
  print(idadeInt.runtimeType);
  double peso = 64;
  double altura = 1.83;
  var tmp = peso / (altura * altura);

  double imc = double.parse(tmp.toStringAsFixed(2));
  print(imc);
  if (imc < 19) {
    print("voce esta abaixo do peso");
  } else if (imc > 19 && imc <= 25) {
    print("peso ideal");
  } else if (imc > 25 && imc < 31) {
    print("voce esta do peso");
  } else {
    print("voce esta mt acima do peso");
  }
}

void ternario() {
  print(!true ? 'verdadeiro' : 'falso');
  int idade = 13;
  print(idade < 14
      ? 'crianca'
      : (idade < 18)
      ? 'adolescente'
      : 'adulto');
}

void decisaoSwitch() {
  var operacao = "-";
  double numeroA = 12;
  double numeroB = 3;

  switch (operacao) {
    case '+':
      print('resultado: ${numeroB + numeroA}');
      break;

    case '-':
      print('resultado: ${numeroA - numeroB}');
      break;

    case '/':
      print('resultado: ${numeroA / numeroB}');
      break;
    default:
      print('invalido');
  }
}
