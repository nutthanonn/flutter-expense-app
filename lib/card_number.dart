import 'package:flutter/material.dart';

class CardNumber extends StatelessWidget {
  const CardNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "1234",
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        letterSpacing: 5,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
