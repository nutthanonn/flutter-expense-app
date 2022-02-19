import 'package:flutter/material.dart';

class FormGmail extends StatefulWidget {
  const FormGmail({Key? key}) : super(key: key);

  @override
  _FormGmailState createState() => _FormGmailState();
}

class _FormGmailState extends State<FormGmail> {
  final _gmail = TextEditingController();

  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Gmail',
          border: OutlineInputBorder(),
        ),
        controller: _gmail,
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
