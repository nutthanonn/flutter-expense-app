import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({Key? key, required this.onSubmit, required this.btnName})
      : super(key: key);

  final Function() onSubmit;
  final String btnName;

  @override
  Container build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 50.0,
      decoration: const BoxDecoration(),
      child: TextButton(child: Text(btnName), onPressed: onSubmit),
    );
  }
}
