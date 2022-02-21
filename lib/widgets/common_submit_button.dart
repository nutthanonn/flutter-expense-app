import 'package:flutter/material.dart';

class CommonSubmitButton extends StatelessWidget {
  const CommonSubmitButton(
      {Key? key, required this.onPressed, required this.nameBtn})
      : super(key: key);

  final VoidCallback? onPressed;
  final String nameBtn;

  @override
  TextButton build(BuildContext context) {
    return TextButton(
      child: Text(nameBtn),
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
