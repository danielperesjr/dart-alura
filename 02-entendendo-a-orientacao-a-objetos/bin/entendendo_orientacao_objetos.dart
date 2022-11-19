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

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida há $diasDesdeColheita dias e precisa de"
        " $diasParaMadura dias para ser consumida!"
        " Ela está madura? $isMadura"
    );
  }
}