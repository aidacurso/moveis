//Ler um valor e escrever se é positivo ou negativo (considere o valor zero como positivo).

import 'dart:io';

void main() {
  int num;
  print("inserir numero:");
  num = int.parse(stdin.readLineSync().toString());
  if (num > 0) {
    print("o numero ${num} é positivo");
  }
  if (num < 10) {
    print("o número é negativo");
  }
  if (num == 10) {
    print("o número que você digitou ${num} é positivo");
  }
}
