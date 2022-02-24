//Ler um valor e escrever a mensagem É MAIOR QUE 10! se o valor lido for maior que 10, caso contrário escrever NÃO É MAIOR QUE 10!

import 'dart:io';

void main() {
  int num;
  print("inserir numero:");
  num = int.parse(stdin.readLineSync().toString());
  if (num > 10) {
    print("o numero ${num} é maior que 10");
  }
  if (num < 10) {
    print("o número é menor que 10");
  }
  if (num == 10) {
    print("o número que você digitou já é 10");
  }
}
