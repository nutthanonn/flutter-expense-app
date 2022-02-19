import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  const CommonTitle({Key? key, required this.title, required this.sizeTitle})
      : super(key: key);

  final String title;
  final double sizeTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontFamily: "Itim-regular", fontSize: sizeTitle),
    );
  }
}
