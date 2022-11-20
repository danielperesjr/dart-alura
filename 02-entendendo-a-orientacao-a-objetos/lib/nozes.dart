import 'fruta.dart';

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diaDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diaDesdeColheita);
}