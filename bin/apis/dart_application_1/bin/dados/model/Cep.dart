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

  Cep({required this.cep, required this.logradouro, required this.complemento, required this.localidade, required this.uf, required this.ibge, required this.gia, required this.ddd, required this.siafi});

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

  Cep.fromJsonEmptyValues(Map<String, dynamic> json) {
    cep = json['cep'];
    logradouro = json['logradouro'];
    localidade = json['localidade'];
    uf = json['uf'];
    ibge = json['ibge'];
    ddd = json['ddd'];
    siafi = json['siafi'];
  }

  @override
  String toString() {
    return "$cep, $complemento, $ddd, $gia, $ibge, $localidade, $logradouro, $siafi, $uf";
  }
}
