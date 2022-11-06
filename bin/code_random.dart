import 'dart:ffi';

import 'package:code_random/code_random.dart' as code_random;

void main(List<String> arguments) {
  print('Hello world: ${code_random.calculate()}!');
  rodarCalculadora();
}

void rodarCalculadora() {
  var numberIdiota = 20;

  if (numberIdiota == 20) {
    print("numberIdiota $numberIdiota");
    for (var i = 0; i < numberIdiota; i++) {
      print("numberIdiota ${numberIdiota++}");
    }
  }
}
