import 'alimento.dart';

class Legume extends Alimento {
  bool isPrecisaCozinhar;

  Legume(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    (isPrecisaCozinhar)
        ? print("Pronto, o $nome está cozinhado!")
        : print("Não precisou cozinhar!");
  }
}