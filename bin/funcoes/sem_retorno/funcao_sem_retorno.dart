void semRetorno() {
  print('funcaoSemRetorno');
}

void somarValores(int valorA, int valorB) {
  print(valorA + valorB);
}

void verificarMaioridade(String nome, int idade) {
  if (idade <= 17) {
    print('$nome é menor de idade');
  } else {
    print('$nome é maior de idade');
  }
}

converterParaMilhas(dynamic array) {
  dynamic milhas = 0.61271;
  for (dynamic item in array) {
    print('$item km em milhas eh ${(item * milhas).toStringAsFixed(2)}');
  }
}

comRetorno(var idade) {
  if (idade == 1) {
    print(true);
    return true;
  }
  return false;
}

/// funcao de um bloco so, como no kotlin, que ja retorna o resultado

bool conceito() => true;

List<String> desconceito() => ['murillo', 'jose', 'raimundo', 'pequeno'];

///funcao arrow tem retorno implicito
void funcaoArrow() {
  print(conceito());
  List<String> sorted = desconceito();
  sorted.sort();
  print(sorted);
  print(desconceito());
}

void funcoesComParametosNomeados({int nome = 23}) {
  print(nome);
}

funcaoParaSerUsadaaComoParametro() {
  print('foi-se chamada a função');
}

void passarFuncaoComoParametro(Function funcaoParaUsar) => funcaoParaSerUsadaaComoParametro();

/*
void main() {
  comRetorno(1);
  somarValores(2, 2);
  verificarMaioridade('murillo', 18);
  converterParaMilhas([2, 3, 4, 5, 60, 32, 14, 6]);
  funcaoArrow();
  funcoesComParametosNomeados();
  passarFuncaoComoParametro(funcaoParaSerUsadaaComoParametro());
}
*/