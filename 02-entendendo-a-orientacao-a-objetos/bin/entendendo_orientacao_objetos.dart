import 'package:entendendo_a_orientacao_a_objetos/citricas.dart';
import 'package:entendendo_a_orientacao_a_objetos/fruta.dart';
import 'package:entendendo_a_orientacao_a_objetos/legume.dart';
import 'package:entendendo_a_orientacao_a_objetos/nozes.dart';

void main() {
  String nomeFruta = "Laranja";
  double pesoFruta = 100.2;
  String corFruta = "Verde e Amarela";
  String saborFruta = "Doce e cítrica";
  int diasDesdeColheitaFruta = 40;
  bool isMadura = funcIsMadura(diasDesdeColheitaFruta);

  print(isMadura);
  print(funcIsMadura(50));

  showMadura(nome: "Uva", dias: 55, cor: "Roxa");

  print(funcQuantosDiasMadura(diasDesdeColheitaFruta));

  print(toString(
      nome: "Uva",
      peso: 500.0,
      diasDesdeColheita: 40,
      diasParaMadura: 0,
      isMadura: true));

  Fruta uva = Fruta("Uva", 500.0, "Roxa", "Azedo", 40);
  uva.estaMadura(30);

  Legume legume1 = Legume("Macaxeira", 1200, "Marrom", true);
  Fruta fruta1 = Fruta("Banana", 75, "Amarela", "Doce",12);
  Nozes noz1 = Nozes("Amendoim", 3.5, "Marrom", "Amargo", 130, 17);
  Citricas citrica1 = Citricas("Laranja", 200, "Laranja", "Doce", 20, 7);

  legume1.printAlimento();
  fruta1.printAlimento();
  noz1.printAlimento();
  citrica1.printAlimento();
  legume1.cozinhar(); // Funciona
  fruta1.fazerSuco(); // Funciona!

}

// Posicionais Obrigatórios
// String nome
// Nomeados Opcionais
// {String? nome}
// Parâmetros com "Padrão"
// {String nome = "sem nome"}
// Modificador "Required"
// {required String nome}

bool funcIsMadura(int days) {
  if (days >= 30) {
    return true;
  } else {
    return false;
  }
}

void showMadura({required String nome, required int dias, String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }
  if (cor != null) {
    print("A $nome é $cor.");
  }
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  return quantosDiasFaltam;
}

String toString({required String nome, required double peso, required int diasDesdeColheita, required diasParaMadura, bool? isMadura}) {
  late String estaMadura;
  if (diasDesdeColheita >= diasParaMadura) {
    estaMadura = "está madura";
  } else {
    estaMadura = "não está madura";
  }
  String fraseFruta = ("A $nome pesa $peso gramas! "
      "Ela foi colhida há $diasDesdeColheita dias e vai precisar de "
      "$diasParaMadura dias para amadurecer, logo a $nome $estaMadura!");
  return fraseFruta;
}