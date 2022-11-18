import 'dart:io';

// Conhecendo o Dart

void main() {
  const int yearBirth = 1993;
  int yearBirthday = yearBirth;
  int currentYear = DateTime.now().year;
  int age = currentYear - yearBirth;
  double height = 1.79;
  bool geek = true;
  const String name = "Daniel";
  final String nickName;
  bool legalAge;
  int remainingBattery = 100;

  nickName = "Dani";
  List<dynamic> danielList = <dynamic>[age, height, geek, name, nickName];

  if (age >= 18) {
    legalAge = true;
  } else {
    legalAge = false;
  }

  String phrase = "Eu sou o ${danielList[3]}, \n"
      "mas o meu apelido é ${danielList[4]}. \n"
      "Eu me considero Geek? ${danielList[2]}. \n"
      "Eu tenho ${danielList[0]} anos e ${danielList[1]} de altura. \n"
      "Sou maior de idade? $legalAge. \n";

  print(phrase);
  print("-------------------------------------");

  for (int i = 1; i <= age; i++) {
    yearBirthday++;
    print("Completei $i ano(s) de idade em $yearBirthday.");
  }

  print("-------------------------------------");

  // while(remainingBattery > 0){
  //   print("Sua carga de bateria atual é: $remainingBattery%");
  //   remainingBattery = remainingBattery - 6;
  // }

  // print("-------------------------------------");

  do {
    print("Sua carga de bateria atual é: $remainingBattery%");
    remainingBattery = remainingBattery - 6;
  } while (remainingBattery > 0);

  print("-------------------------------------");

  imcCalc();
}

void imcCalc() {
  String? name;
  String? input;
  late int age;
  late double height;
  late double weight;
  late double imc;

  print("Olá, qual o seu nome?");
  name = stdin.readLineSync();
  while (name == null || name == "") {
    print("Por favor, tente novamente:");
    name = stdin.readLineSync();
  }
  print("-------------------------------------");

  print("Qual a sua idade (ex: 18)?");
  input = stdin.readLineSync();
  while (input == null || input == "") {
    print("Por favor, tente novamente:");
    input = stdin.readLineSync();
  }
  age = int.parse(input);
  input = null;
  print("-------------------------------------");

  print(
      "Vamos calcular o seu IMC! Por favor, informe a sua altura (ex. 1.79):");
  input = stdin.readLineSync();
  while (input == null || input == "") {
    print("Por favor, tente novamente:");
    input = stdin.readLineSync();
  }
  height = double.parse(input);
  input = null;
  print("-------------------------------------");

  print("Agora informe o seu peso (ex. 70.0):");
  input = stdin.readLineSync();
  while (input == null || input == "") {
    print("Por favor, tente novamente:");
    input = stdin.readLineSync();
  }
  weight = double.parse(input);
  input = null;
  print("-------------------------------------");

  imc = weight / (height * height);
  print("Certo $name, a sua idade é de $age anos e o seu IMC é: $imc");
  print("-------------------------------------");

  if (imc >= 18.5 && imc <= 24.99) {
    print("Continue assim! O seu IMC está na faixa recomendada.");
  } else {
    print(
        "Talvez seja interessante procurar por orientação médica, pois o seu IMC não está na faixa recomendada.");
  }
}
