class Bicicletario {
  int _cadenciaBicicleta;
  int get cadenciaBicicleta => _cadenciaBicicleta;
  late int velocidadadeBicicleta;
  late int machasBicicleta;
  @override
  String toString() {
    return 'Bicicletario $cadenciaBicicleta, $velocidadadeBicicleta, $machasBicicleta';
  }

  Bicicletario(this._cadenciaBicicleta, this.machasBicicleta, this.velocidadadeBicicleta);
}

void main(List<String> args) {
  Bicicletario bicicleta = Bicicletario(20, 20, 20);
  bicicleta.cadenciaBicicleta;
  var atributosBicicleta = [bicicleta.cadenciaBicicleta, bicicleta.machasBicicleta, bicicleta.velocidadadeBicicleta];
  for (var itemsBicicleta in atributosBicicleta) {
    print(itemsBicicleta);
  }
  print(bicicleta);

  print('cadencia da bicicleta eh = ${bicicleta.cadenciaBicicleta}');
}
