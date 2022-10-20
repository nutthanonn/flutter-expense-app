import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_demo/add_transection_page.dart';

class AppBarCommon extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCommon({Key? key, required this.title, required this.onClick})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  final String title;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 0,
      actions: <Widget>[
        Padding(
          child: IconButton(
            icon: const Icon(
              Icons.add_outlined,
              color: Colors.black,
            ),
            onPressed: onClick,
            splashColor: Colors.black45,
            splashRadius: 20,
          ),
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
        )
      ],
    );
  }
}
