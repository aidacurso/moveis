//Faça um algoritmo que leia a idade de uma pessoa expressa em anos, meses e
// dias e escreva a idade dessa pessoa expressa apenas em dias. Considerar ano
// com 365 dias e mês com 30 dias.

import 'dart:io';

void main() {
  print("digite sua idade em anos");
  int idade = int.parse(stdin.readLineSync().toString());
  print("digite quantos meses voce tem");
  int meses = int.parse(stdin.readLineSync().toString());
  print("digite quantos dias você tem");
  int dias = int.parse(stdin.readLineSync().toString());

  int total = ((idade * 365) + (meses * 30) + dias);

  print("você ja viveu ${total} dias");
}
