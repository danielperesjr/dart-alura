import 'alimento.dart';

class Fruta extends Alimento{
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida há $diasDesdeColheita dias e precisa de"
            " $diasParaMadura dias para ser consumida!"
            " Ela está madura? $isMadura"
    );
  }
  void fazerSuco() {
    print("Você fez um ótimo suco de $nome!");
  }
}