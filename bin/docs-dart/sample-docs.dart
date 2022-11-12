/*void main() {
  var tiposEspecificos = {
    'nomes': ['murillo', 'jose', 'murillo', 'raimundo'],
    'url': 'saturno.com.br'
  };
  printWithDelay();
  print(tiposEspecificos);
  final isPlainGiant = Planetas.mercurio;
  if (isPlainGiant.moons != 20) {
    print('planeta não tem mais que 20 luas');
  }
}*/

const oneSecond = Duration(seconds: 1);
printWithDelay() async {
  await Future.delayed(oneSecond);
  print('depois de um segundo');
}

enum PlanetaType { terrerial, gas, ice }

enum Planetas {
  mercurio(planetaType: PlanetaType.terrerial, moons: 12),
  neptune(planetaType: PlanetaType.gas, moons: 15);

  const Planetas({required this.planetaType, required this.moons});

  final int moons;
  final PlanetaType planetaType;
}
