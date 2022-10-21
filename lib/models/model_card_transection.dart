import 'package:flutter_application_demo/models/model_card.dart';
import 'package:flutter_application_demo/models/model_transection.dart';

class ModelCardTrasection {
  ModelCard card;
  List<ModelTransection> transection;

  ModelCardTrasection({required this.card, required this.transection});

  factory ModelCardTrasection.fromJson(Map<String, dynamic> json) {
    return ModelCardTrasection(
      card: ModelCard.fromJson(json['card']),
      transection: json['transection'],
    );
  }
}
