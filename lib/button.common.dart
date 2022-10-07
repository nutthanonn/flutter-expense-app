import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  const ButtonCommon({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        title,
        style: const TextStyle(color: Colors.red),
      ),
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.red),
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.fromLTRB(20, 5, 20, 5),
        ),
      ),
    );
  }
}
