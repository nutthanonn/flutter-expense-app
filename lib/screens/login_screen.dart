import 'package:demo_flutter/widgets/common_demo_text_form_field.dart';
import 'package:demo_flutter/widgets/common_submit_button.dart';
import 'package:demo_flutter/widgets/common_title.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _gmail;

  void handleSubmit() {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();

    print(_gmail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CommonTitle(title: "Login", sizeTitle: 50.0),
                const SizedBox(
                  height: 50.0,
                ),
                DemoTextFormField(
                  onSaved: (value) {
                    _gmail = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Empty gmail';
                    }
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CommonSubmitButton(onPressed: handleSubmit, nameBtn: "next"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
