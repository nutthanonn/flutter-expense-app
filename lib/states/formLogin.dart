import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  Widget btnToHome() {
    return OutlinedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("back to home"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: btnToHome(),
      ),
    );
  }
}
