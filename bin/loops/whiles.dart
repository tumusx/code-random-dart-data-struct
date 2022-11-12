import 'dart:convert';

void whileFuncions() {
  var numero = 5;
  while (numero > 0) {
    print("numero: $numero");
    numero--;
  }

  var contagem = 1;
  do {
    print(contagem);
    contagem++;
  } while (contagem <= 3);

  var multiplo = 4;
  var min = 10;
  var max = 20;
  int resultado = min;

  while (resultado <= max) {
    if (resultado % multiplo == 0) {
      print('multiplo de $multiplo entre $min e $max');
      break;
    }
    resultado++;
  }
}
