import 'dart:math';

abstract class Shape {
  num get area;
}

class Cicle implements Shape {
  final num radius;
  Cicle(this.radius);
  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  @override
  num get area => pow(side, 2);
}

Shape shapeFactory(String typeSelected) {
  if (typeSelected == ShapesType.cicle.name) return Cicle(2);
  if (typeSelected == ShapesType.square.name) return Square(2);
  throw 'Nao foi calcular a area do $typeSelected. Não existente!';
}

enum ShapesType {
  cicle,
  square;
}

void main() {
  final cicle = shapeFactory(ShapesType.cicle.name);
  final square = shapeFactory(ShapesType.square.name);
  print(cicle.area);
  print(square.area);
}
