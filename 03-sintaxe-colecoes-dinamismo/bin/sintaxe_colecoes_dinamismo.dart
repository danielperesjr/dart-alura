import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemAgosto = Viagem(locomocao: Transporte.trem);
  print(viagemAgosto.getTotaLocaisVisitados);
  viagemAgosto.visitar("Museu");
  print(viagemAgosto.getTotaLocaisVisitados);

  viagemAgosto.setLocaisVisitados = 20;
  print(viagemAgosto.getTotaLocaisVisitados);
}
