import 'package:flutter/material.dart';

class MoneyControl extends StatelessWidget {
  const MoneyControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
          child: LimitedBox(
            maxWidth: 100,
            maxHeight: 30,
            child: Text(
              "30000",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Text(
          "Bath",
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
