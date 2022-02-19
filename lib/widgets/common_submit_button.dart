import 'package:flutter/material.dart';

class CommonSubmitButton extends StatelessWidget {
  const CommonSubmitButton(
      {Key? key, required this.onSubmit, required this.nameBtn})
      : super(key: key);

  final Function() onSubmit;
  final String nameBtn;

  @override
  Container build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(nameBtn),
        onPressed: onSubmit,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
      height: 30.0,
      width: 120.0,
    );
  }
}
