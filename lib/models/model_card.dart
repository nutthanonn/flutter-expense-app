class ModelCard {
  String cardNumber;
  double balance;

  ModelCard({required this.cardNumber, required this.balance});

  factory ModelCard.fromJson(json) {
    return ModelCard(
        cardNumber: json['card_number'], balance: json['balance'] as double);
  }
}
