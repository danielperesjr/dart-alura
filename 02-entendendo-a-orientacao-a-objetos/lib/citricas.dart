import 'fruta.dart';

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diaDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diaDesdeColheita);

  void existeRefri(bool existe) {
    (existe)
        ? print("Existe refri de $nome")
        : print("Não existe refri de $nome");
  }
}