import 'dart:ffi';
import 'dart:math';

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  Future<void> printOrderMessage() async {
    print('Awaiting user order...');
    var order = await Future.delayed(const Duration(seconds: 5));
    'odernacao';
    print('esperando terminar o time de 5 secs');
    order = 5;
    print('Your order is: $order');
  }

  final num side;
  Square(this.side);
  @override
  num get area => pow(side, 2);
}

Shape shapeFactory(String typeSelected) {
  if (typeSelected == ShapesType.circle.name) return Circle(2);
  if (typeSelected == ShapesType.square.name) return Square(2);
  throw 'Nao foi calcular a area do $typeSelected. Não existente!';
}

enum ShapesType {
  circle,
  square;
}

void main() {
  final cicle = Square(2);
  print(cicle.printOrderMessage());
  final circle = shapeFactory(ShapesType.circle.name);
  final square = shapeFactory(ShapesType.square.name);
  print(circle.area);
  print(square.area);
}
