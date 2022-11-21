import 'dart:io';
import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  // Account accountTest = Account(name: "Daniel", balance: -100, isAuthenticated: true);
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 599);
    if(result){
      print("Transação concluída com sucesso!");
    }
  } on SenderInvalidIdException catch (e) {
    print(e);
    print("O ID '${e.idSender}' do remetente não é um ID válido!");
  } on ReceiverInvalidIdException catch (e) {
    print(e);
    print("O ID '${e.idReceiver}' do destinatário não é um ID válido!");
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("O usuário remetente do ID '${e.idSender}' não está autenticado!");
  } on ReceiverNotAuthenticatedException catch (e) {
    print(e);
    print("O usuário destinatário do ID '${e.idReceiver}' não está autenticado!");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print("O usuário do ID ${e.idSender} tentou enviar ${e.amount}, mas o saldo da conta é de ${e.senderBalance}");
  } on Exception {
    print("Algo deu errado!");
  }

  testingNullSafety();

}

void testingNullSafety(){
  // Account? myAccount;
  Account? myAccount = Account(name: "Daniel", balance: 200, isAuthenticated: true);

  // Simulando uma comunicação externa
  Random random = Random();
  int randomNumber = random.nextInt(10);

  if(randomNumber % 2 == 0){
    myAccount.createdAt = DateTime.now();
  }
  print("O número aleatório é: $randomNumber\nEssa variável é do tipo: ${myAccount.runtimeType}");

  // Teste forçado que não funnciona
  //print(myAccount.balance);

  // Erro, pois pode ser nulo
  // print(myAccount.createdAt.day);

  // Conversão direta: má prática!
  // print(myAccount!.balance);
  // print(myAccount.createdAt!.day);

  // Teste usando if-else para verificar a possibilidade de nulo.
  if(myAccount != null){
    print(myAccount.balance);
    if(myAccount.createdAt != null){
      // Não é uma má prática, pois houve um teste antes de acessar
      // a propriedade interna
      print(myAccount.createdAt!.day);
    }
  }else{
    print("Conta nula!");
  }

  // Teste usando operador ternário para verificar a possibilidade de nulo.
  // print(myAccount != null ? myAccount.balance : "Conta nula!");

  //SAFE CALL: realiza o acesso a balance somente caso não seja nulo!
  // print(myAccount?.balance);

}
