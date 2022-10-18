import 'package:flutter/material.dart';
import 'package:flutter_application_demo/drowdown_menu.dart';

class AddTransectionPage extends StatefulWidget {
  const AddTransectionPage({Key? key}) : super(key: key);

  @override
  State<AddTransectionPage> createState() => _AddTransectionPageState();
}

class _AddTransectionPageState extends State<AddTransectionPage> {
  final List<String> transectionType = ["withdraw", "deposite"];
  String dropdownvalue = 'withdraw';

  void setDropdownVal(String? val) {
    setState(() {
      dropdownvalue = val!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Transection",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 20.0,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownMenu(
              dropdownItem: transectionType,
              value: dropdownvalue,
              handleChange: setDropdownVal,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xEEEEEEEE),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: 200.0,
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  hintText: 'amount',
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
