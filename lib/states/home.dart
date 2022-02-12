import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;

  Widget btnAddNumber() {
    return OutlinedButton(
        onPressed: () {
          setState(() {
            number += 1;
          });
        },
        child: const Text("Add"));
  }

  Widget btnClearNumber() {
    return OutlinedButton(
        onPressed: () {
          setState(() {
            number = 0;
          });
        },
        child: const Text("Reset"));
  }

  Widget shopIcon() {
    return Image.asset(
      "images/online-shopping-icon.png",
      width: 200,
    );
  }

  Widget shopName() {
    return const Text("Nut Shop",
        style: TextStyle(fontFamily: "Itim-Regular", fontSize: 40));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              shopIcon(),
              shopName(),
              Text(
                "$number",
                style: const TextStyle(fontSize: 40),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: btnAddNumber(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: btnClearNumber(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Nutthanon",
          style: TextStyle(fontFamily: "Itim-Regular", fontSize: 30),
        ),
      ),
    );
  }
}
