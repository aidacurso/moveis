//Escreva um algoritmo para ler as dimensões de um retângulo (base e altura), calcular e escrever a área do retângulo. a= (b.h)2

import 'dart:io';

void main() {
  double b, a, area;
  print("digite o valor da base:");
  b = double.parse(stdin.readLineSync().toString());
  print("digite o valor da altura:");
  a = double.parse(stdin.readLineSync().toString());
  area = (b*a)/2;
  print("o valor da área do retângulo é ${area}");
}
