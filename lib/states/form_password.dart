import 'package:flutter/material.dart';

class FormPassword extends StatefulWidget {
  const FormPassword({Key? key}) : super(key: key);

  @override
  _FormPasswordState createState() => _FormPasswordState();
}

class _FormPasswordState extends State<FormPassword> {
  final _password = TextEditingController();
  bool _secure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: 'Password',
          suffixIcon: IconButton(
            icon: _secure
                ? const Icon(Icons.remove_red_eye)
                : const Icon(Icons.remove_red_eye_outlined),
            onPressed: () {
              setState(() {
                _secure = !_secure;
              });
            },
          ),
        ),
        obscureText: _secure,
        controller: _password,
      ),
    );
  }
}
