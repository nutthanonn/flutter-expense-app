import 'package:demo_flutter/states/form_gmail.dart';
import 'package:demo_flutter/states/form_password.dart';
import 'package:demo_flutter/widgets/common_submit_button.dart';
import 'package:demo_flutter/widgets/common_title.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  void handleSubmit() {
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CommonTitle(title: 'Login', sizeTitle: 50),
              const SizedBox(
                height: 30.0,
              ),
              const FormGmail(),
              const SizedBox(
                height: 20.0,
              ),
              const FormPassword(),
              const SizedBox(
                height: 20.0,
              ),
              CommonSubmitButton(onSubmit: handleSubmit, nameBtn: 'Submit')
            ],
          ),
        ),
      ),
    );
  }
}
