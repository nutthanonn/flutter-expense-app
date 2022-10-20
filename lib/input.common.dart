import 'package:flutter/material.dart';

class InputCommon extends StatelessWidget {
  const InputCommon(
      {Key? key,
      required this.placeholder,
      required this.onChanged,
      required this.errorhandler,
      this.keyBoardType = TextInputType.text})
      : super(key: key);

  final String placeholder;
  final Function(String) onChanged;
  final TextInputType keyBoardType;
  final bool errorhandler;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
        child: TextField(
          style: const TextStyle(fontSize: 18.0, color: Colors.black),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
            filled: true,
            hintText: placeholder,
            fillColor: const Color(0xEEEEEEEE),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            errorText:
                errorhandler ? "Please enter a valid $placeholder" : null,
            errorBorder: errorhandler
                ? OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10.0),
                  )
                : null,
          ),
          onChanged: onChanged,
          keyboardType: keyBoardType,
        ),
      ),
    );
  }
}
