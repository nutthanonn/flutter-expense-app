import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            children: <Widget>[shopIcon(), shopName()],
          ),
        ),
      ),
    );
  }
}
