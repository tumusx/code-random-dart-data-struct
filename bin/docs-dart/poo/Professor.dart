import 'package:test/test.dart';

abstract class IProfessor {
  final String nomeProfessor;
  final MateriasDoProfessor materiasDoProfessor;
  IProfessor(this.nomeProfessor, this.materiasDoProfessor);

  bool adicionarAluno(String aluno);
}

void main() {
  Professor professorMurillo = Professor();
  print(professorMurillo.adicionarAluno('Murillo'));
  print(professorMurillo.materiasDoProfessor.quantidadeAlunoMateria);
  print(professorMurillo.materiasDoProfessor.nomeMateria);
  print(professorMurillo.nomeProfessor);
}

mixin Escola {
  var turmas = ['3C', '4C', '5C'];

  void cadastrarAlunoNaTurma(String turmaEscolhida) {}
}

class Professor extends IProfessor with Escola {
  Professor(super.nomeProfessor, super.materiasDoProfessor);
  @override
  void cadastrarAlunoNaTurma(String turmaEscolhida) {
    super.cadastrarAlunoNaTurma(turmaEscolhida);
  }

  @override
  bool adicionarAluno(String aluno) {
    if (aluno.isNotEmpty) {
      print('aluno inserido com sucesso para voce ministrar a aula');
      return true;
    } else {
      print('Ops.. Você nao cadastrou o nome do aluno. Cadastre e tente novamente');
      return false;
    }
  }

  @override
  String get nomeProfessor => 'murillo';

  @override
  MateriasDoProfessor get materiasDoProfessor => MateriasDoProfessor.murilloProfessor;
}

enum MateriasType {
  biologia,
  matematica,
  portugues,
  gramatica;
}

enum MateriasDoProfessor {
  murilloProfessor(nomeMateria: MateriasType.biologia, quantidadeAlunoMateria: 12);

  const MateriasDoProfessor({required this.nomeMateria, required this.quantidadeAlunoMateria});

  final MateriasType nomeMateria;
  final int quantidadeAlunoMateria;
}
