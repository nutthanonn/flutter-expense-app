import 'package:flutter/material.dart';
import 'package:flutter_application_demo/models/model_transection.dart';
import 'package:flutter_application_demo/transection_box.dart';

class ListTransection extends StatelessWidget {
  const ListTransection({Key? key, required this.transectionData})
      : super(key: key);

  final List<ModelTransection> transectionData;

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
              children: <Widget>[
                ...transectionData.map((transection) {
                  return TransectionBox(
                    transectionType: transection.transectionType,
                    title: transection.title,
                  );
                }).toList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
