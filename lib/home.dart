import 'package:flutter/material.dart';
import 'package:flutter_application_demo/list_transection.dart';
import 'package:flutter_application_demo/appbar.common.dart';
import 'package:flutter_application_demo/carousel_slider.common.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCommon(
        title: "Home page",
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const <Widget>[
              CarouselSliderCommon(),
              ListTransection(),
            ],
          ),
        ),
      ),
    );
  }
}
