//O custo de um carro novo ao consumidor é a soma do custo de fábrica com a porcentagem
// do distribuidor e dos impostos (aplicados ao custo de fábrica). Supondo que o percentual
//do distribuidor seja de 28% e os impostos de 45%, escrever um algoritmo para ler o custo de
//fábrica de um carro, calcular e escrever o custo final ao consumidor.

import 'dart:io';

void main() {
  double dist = 28 / 100;
  double imp = 45 / 100;

  print("digite o custo de fábrica de um carro.");

  double custo = double.parse(stdin.readLineSync().toString());
  custo = ((dist + imp) * custo) + custo;
  print("o custo desse carro é de RS ${custo}.");
}
