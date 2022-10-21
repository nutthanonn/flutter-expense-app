import 'package:flutter_application_demo/models/model_transection.dart';

class ModelCard {
  String cardNumber;
  double balance;
  List<ModelTransection> transection;

  ModelCard(
      {required this.cardNumber,
      required this.balance,
      required this.transection});

  factory ModelCard.fromJson(Map<String, dynamic> json) {
    return ModelCard(
      cardNumber: json['cardNumber'],
      balance: json['balance'],
      transection: json['transection'],
    );
  }
}
