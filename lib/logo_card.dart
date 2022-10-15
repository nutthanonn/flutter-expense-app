import 'package:flutter/material.dart';

class LogoCard extends StatelessWidget {
  const LogoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red.withOpacity(0.8),
          ),
        ),
        Positioned(
          top: 0,
          left: 25,
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange.withOpacity(0.8),
            ),
          ),
        ),
      ],
    );
  }
}
