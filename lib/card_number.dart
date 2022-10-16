import 'package:flutter/material.dart';

class CardNumber extends StatelessWidget {
  const CardNumber({Key? key, required this.cardNumber}) : super(key: key);

  final String cardNumber;

  @override
  Widget build(BuildContext context) {
    return Text(
      cardNumber,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        letterSpacing: 5,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
