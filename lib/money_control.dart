import 'package:flutter/material.dart';

class MoneyControl extends StatelessWidget {
  const MoneyControl({Key? key, required this.balance}) : super(key: key);

  final double balance;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        LimitedBox(
          maxWidth: 100,
          maxHeight: 30,
          child: Text(
            "$balance",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Text(
          "Bath",
          style: TextStyle(
            color: Colors.white,
          ),
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
