import 'dart:io';


void stackStart() {
  // FormatException: Invalid double
  // double amount = double.parse("25,33");

  //Unhandled exception: Stack Overflow
  // recursiveFunc(1);

  print("Started main");
  functionOne();
  print("Finished main");
}

void recursiveFunc(int count) {
  print(count);
  recursiveFunc(count + 1);
}

void functionOne() {
  print("Started Function 01");
  try {
    functionTwo();
  } on FormatException catch (e) {
    print("Erro capturado na chamada da Function 02!");
    print(e.message);
    print(e.source);
    print(e.toString());
  } on HttpException catch (e) {
    e.toString();
  } on IOException catch (e) {
    print("Uma IOException foi encontrada!");
  } catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
    rethrow;
  } finally {
    print("Chegou no Finally!");
  }
  print("Finished Function 01");
}

void functionTwo() {
  print("Started Function 02");
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse("Not a number");
  }
  print("Finished Function 02");
}