import 'package:flutter_application_demo/models/model_transection.dart';

class ModelCard {
  String cardNumber;
  double balance;

  ModelCard({
    required this.cardNumber,
    required this.balance,
  });

  factory ModelCard.fromJson(Map<String, dynamic> json) {
    return ModelCard(
      cardNumber: json['cardNumber'],
      balance: json['balance'],
    );
  }
}
