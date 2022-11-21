class SenderInvalidIdException implements Exception {
  String idSender;
  static const String report = "SenderInvalidIdException";

  SenderInvalidIdException({required this.idSender});

  @override
  String toString(){
    return "$report\nID Sender: $idSender\n";
  }
}

class ReceiverInvalidIdException implements Exception {
  String idReceiver;
  static const String report = "ReceiverInvalidIdException";

  ReceiverInvalidIdException({required this.idReceiver});

  @override
  String toString(){
    return "$report\nID Receiver: $idReceiver\n";
  }
}

class SenderNotAuthenticatedException implements Exception {
  String idSender;
  static const String report = "SenderNotAuthenticatedException";

  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString(){
    return "$report\nID Sender: $idSender\n";
  }
}

class ReceiverNotAuthenticatedException implements Exception {
  String idReceiver;
  static const String report = "ReceiverNotAuthenticatedException";

  ReceiverNotAuthenticatedException({required this.idReceiver});

  @override
  String toString(){
    return "$report\nID Receiver: $idReceiver\n";
  }
}

class SenderBalanceLowerThanAmountException implements Exception {
  String idSender;
  double senderBalance;
  double amount;
  static const String report = "SenderBalanceLowerThanAmountException";

  SenderBalanceLowerThanAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});

  @override
  String toString(){
    return "$report\nID Sender: $idSender\nSender Balance: $senderBalance\nAmount: $amount\n";
  }
}
