import 'package:demo_flutter/states/formLogin.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget btnLogin() {
    return IconButton(
      icon: const Icon(Icons.navigate_next),
      tooltip: 'Go to the next page',
      onPressed: () {
        Navigator.push(context, MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Next page'),
              ),
              body: const Center(
                child: Text(
                  'This is the next page',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            );
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nutthanon App"),
        actions: [],
      ),
    );
  }
}
