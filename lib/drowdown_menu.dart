import 'package:flutter/material.dart';

class DropdownMenu extends StatelessWidget {
  const DropdownMenu(
      {Key? key,
      required this.dropdownItem,
      required this.value,
      required this.handleChange})
      : super(key: key);

  final List<String> dropdownItem;
  final String value;
  final Function(String?) handleChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xEEEEEEEE),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DropdownButton<String>(
            items: dropdownItem.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: handleChange,
            value: value,
            icon: const Padding(
              padding: EdgeInsets.only(left: 70),
              child: Icon(Icons.arrow_drop_down),
            ),
          ),
        ),
      ),
    );
  }
}
