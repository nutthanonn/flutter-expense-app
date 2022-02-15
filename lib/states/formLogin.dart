import "package:flutter/material.dart";

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  String username = "";

  Widget homeBtn() {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.navigate_before));
  }

  Widget usernameField() {
    return Form(
      child: TextField(
        obscureText: false,
        decoration: const InputDecoration(
            border: OutlineInputBorder(), labelText: "Username"),
        style: const TextStyle(fontSize: 20),
        onChanged: (text) {
          setState(() {
            username = text;
          });
        },
        onSubmitted: (String value) {
          print(username);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: usernameField(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
