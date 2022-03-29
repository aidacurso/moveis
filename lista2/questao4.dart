//Ler 3 valores (considere que não serão informados valores iguais) e escrever o maior deles.

import 'dart:io';

void main() {
  int a, b, c, comissao;
  print("digite o primeiro numero");
  a = int.parse(stdin.readLineSync().toString());
  print("digite o segundo numero");
  b = int.parse(stdin.readLineSync().toString());
  print("digite o terceiro numero");
  c = int.parse(stdin.readLineSync().toString());

  if (a > b && b > c) {
  
  }
  if (a > b && b < c) {
    
  }
  if( a < b & & b > c ){

  }
  if (a < b & & b < c){

  }
}
