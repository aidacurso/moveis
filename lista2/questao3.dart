//Ler o salário fixo e o valor das vendas efetuadas
// pelo vendedor de uma empresa. Sabendo-se que ele recebe
//uma comissão de 3% sobre o total das vendas até R$ 1.500,00 mais
// 5% sobre o que ultrapassar este valor, calcular e escrever o seu salário total.

import 'dart:io';

void main() {
  print("digite o seu salário fixo");
  double salario = double.parse(stdin.readLineSync().toString());
  print("digite o valor das vendas");
  double vendas = double.parse(stdin.readLineSync().toString());
  double comissao = 0;
  if (vendas > 1501) {
    comissao = 3 / 100;
  }
  if (vendas <= 1500) {
    comissao = 5 / 100;
  }
  double total = salario + (vendas * comissao);
  print(total);
}
