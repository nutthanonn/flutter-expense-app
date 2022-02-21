import 'package:flutter/material.dart';

class DemoTextFormField extends StatelessWidget {
  const DemoTextFormField({Key? key, this.onSaved, this.validator})
      : super(key: key);

  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        decoration: const InputDecoration(
          hintText: 'Gmail',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
