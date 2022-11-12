void main() {
  List<String> nomesJogadores = <String>[];
  nomesJogadores.add("Pereira Jose");
  nomesJogadores.add("Jose");
  nomesJogadores.sort();
  var nomes = ['Murillo', 'Fernando', 'Isabel'];
  var bicicleta = Bicicleta(25, 30, 40);
  nomes.add('jose');
  for (var pessoa in nomes) {
    print(pessoa);
  }
  print(bicicleta.speed);
  print(bicicleta.gear);
  print(nomesJogadores);
  print(nomesJogadores.indexOf("Pereira Jose"));
  print(nomes);
  
  bool verdadeiro = !false;
  final arrayDinamico = ['texto', nomesJogadores, bool, 1, 2, 3];
  arrayDinamico[0] = nomesJogadores[0];
  print(nomes);
  print(arrayDinamico);
  nomes.sort();
  print(nomes);
}

class Bicicleta {
  int cadencia;
  int speed;
  int gear;

  Bicicleta(int cadence, int speed, int gear)
      : this.cadencia = cadence,
        this.gear = gear,
        this.speed = speed;
}
