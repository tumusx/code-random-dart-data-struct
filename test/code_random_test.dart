import 'package:code_random/code_random.dart';
import 'package:test/test.dart';
import '../bin/docs-dart/poo/Professor.dart';

void quandoInserirAlunoRetornarSucesso() {
  final Professor professorMurillo = Professor();
  expect(professorMurillo.adicionarAluno('murillo'), true);
}

void main() {
  test('quando inserir nome do aluno, retornar sucesso', () {
    quandoInserirAlunoRetornarSucesso();
  });
}
