//Escreva um algoritmo para ler um valor (do teclado) e escrever (na tela) o seu antecessor.
import 'dart:io';

void main() {
  print("digite um numero");
  int n = int.parse(stdin.readLineSync().toString());
  print("o antecessor do número digitado é: ${n-1}");
}
