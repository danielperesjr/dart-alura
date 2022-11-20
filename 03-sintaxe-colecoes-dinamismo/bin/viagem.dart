import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "ASDASD123";
  double saldo = 0;
  Transporte locomocao;
  Set<String> destinosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocaisVisitados = 155;

  Viagem({
    required this.locomocao,
  });

  void printCodigo() {
    print(
        "Este é o print acessado através do método da classe: $codigoTrabalho");
  }

  void escolherMeioTransporte(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print("Vou de carro para a aventura!");
        break;
      case Transporte.bike:
        print("Vou de carro para a aventura!");
        break;
      case Transporte.onibus:
        print("Vou de ônibus para a aventura!");
        break;
      default:
        print("Estou indo para a aventura e é isso que importa!");
        break;
    }
  }

  void visitar(String localVisitado) {
    destinosVisitados.add(localVisitado);
    _totalLocaisVisitados++;
  }

  void registrarPrecoVisita(String localVisitado, dynamic preco) {
    registrarPrecos[localVisitado] = preco;
  }

  int get getTotaLocaisVisitados {
    return _totalLocaisVisitados;
  }

  set setLocaisVisitados(int novaQt) {
    if (novaQt < 10) {
      _totalLocaisVisitados = novaQt;
    } else {
      print("Não é possível visitar $novaQt lugares no mesmo dia!");
    }
  }
}
