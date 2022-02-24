import 'dart:io';

void main(List<String> arguments) {
  Conta a = Conta(10); //instanciar objto
  void GetSaldo() {
    print(a.saldo);
  }

  void Credito(saldoInicial) {
    double cred;
    cred = double.parse(stdin.readLineSync().toString());
    saldoInicial = saldoInicial + cred;
  }

  void Debito(saldoInicial) {
    double deb;
    deb = double.parse(stdin.readLineSync().toString());
    if ((saldoInicial - deb) > 0) {
      saldoInicial = saldoInicial - deb;
    } else {
      print("você não possui saldo suficiente, tente debitar um valor menor");
    }
  }
}

class Conta {
  late double saldo;
  Conta(double saldoInicial) {
    saldo = saldoInicial;
    if (saldoInicial > 0) {
      saldoInicial = 0;
      print("erro");
    }
  }
}
