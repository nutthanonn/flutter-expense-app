import 'package:demo_flutter/widgets/common_button.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final username = TextEditingController();
  final password = TextEditingController();

  bool _securePassword = true;

  void handleSubmit() {
    print("Nutthanon");
  }

  Padding formPassword() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: 'Password',
          suffixIcon: IconButton(
            icon: Icon(_securePassword
                ? Icons.remove_red_eye
                : Icons.remove_red_eye_outlined),
            onPressed: () {
              setState(() {
                _securePassword = !_securePassword;
              });
            },
          ),
        ),
        controller: username,
        obscureText: _securePassword,
      ),
    );
  }

  Padding formUsername() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Gmail',
        ),
        keyboardType: TextInputType.emailAddress,
        controller: username,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              formUsername(),
              const SizedBox(
                height: 20.0,
              ),
              formPassword(),
              CommonButton(onSubmit: handleSubmit, btnName: "Submit"),
            ],
          ),
        ),
      ),
    );
  }
}
