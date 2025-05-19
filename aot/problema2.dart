/*
2) Calculadora de Média de Notas
Objetivo: Desenvolver um algoritmo em Dart que calcule a média das notas de um estudante utilizando valores mockados e determine se ele está aprovado ou reprovado.
Requisitos:
  - Definir um array de notas (ex: [7.5, 9.0, 6.8, 8.2]).
  - Calcular a média das notas.
  - Determinar e exibir se o aluno está aprovado (média >= 6.0) ou reprovado (média < 6.0).
*/

import 'dart:math';

Map<String, dynamic> calcularMedia(List<double> notas) {
  double valortotal = 0;

  for (var nota in notas) {
    valortotal += nota;
  }
  double media = valortotal / notas.length;
  String resultado;
  if (media >= 6.0) {
    resultado = "Aprovado!";
  } else {
    resultado = "Reprovado!";
  }
  return {
    'media': media,
    'resultado': resultado,
  };
}

void main() {
  var random = Random();
  double valortotal = 0;
  List<double> notas = List.generate(4, (_) => random.nextDouble() * 10);
  print('as notas foram:');
  for (var nota in notas){
    print(nota.toStringAsFixed(2)); 
  }
  var resultado = calcularMedia(notas);
  print('Sua media foi:${resultado['media'].toStringAsFixed(2)}');
  print('Com base na sua media você está:${resultado['resultado']}');
}