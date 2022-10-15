import 'package:flutter/material.dart';

class TransectionBox extends StatelessWidget {
  const TransectionBox({Key? key, required this.transectionType})
      : super(key: key);

  final String transectionType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        color: const Color(0xEEEEEEEE),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: 200,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  transectionType == "deposit"
                      ? const Icon(
                          Icons.arrow_upward_sharp,
                          color: Colors.green,
                          size: 17,
                        )
                      : const Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.red,
                          size: 17,
                        ),
                  const LimitedBox(
                    maxWidth: 180,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        "Salary",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const LimitedBox(
              maxWidth: 100,
              child: Text(
                "10000 Bath",
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
