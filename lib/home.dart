import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_demo/button.common.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = "Nutthanon";
  int random_nums = 0;
  List<String> img = [
    "https://i.pinimg.com/564x/a9/78/7a/a9787a7c9d33e902fb17323dc3d5bff9.jpg",
    "https://i.pinimg.com/474x/b6/75/c9/b675c98480f6f6d9d4778aa284d5b376.jpg",
  ];

  void onPressed() {
    setState(() {
      random_nums = Random().nextInt(img.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(img[random_nums]),
            ButtonCommon(
              onPressed: onPressed,
              title: "random",
            ),
          ],
        ),
      ),
    );
  }
}
