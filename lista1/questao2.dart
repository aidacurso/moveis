//Escreva um algoritmo para ler uma temperatura em graus Fahrenheit, calcular e escrever o valor correspondente em graus Celsius
import 'dart:io';

void main() {
  double f, c;
  print("digite o valor em graus fahrenheit");
  f = double.parse(stdin.readLineSync().toString());
  c = ((32 * f) - 32) * (5 / 9);

  print(c);
}
