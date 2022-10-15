import 'package:flutter/material.dart';
import 'package:flutter_application_demo/transection_box.dart';

class ListTransection extends StatefulWidget {
  const ListTransection({Key? key}) : super(key: key);

  @override
  State<ListTransection> createState() => _ListTransectionState();
}

class _ListTransectionState extends State<ListTransection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "List Transections",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
              color: Colors.black54,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: const [
                TransectionBox(
                  transectionType: "deposit",
                ),
                TransectionBox(
                  transectionType: "withdraw",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
