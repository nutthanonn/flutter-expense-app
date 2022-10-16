import 'package:flutter/material.dart';
import 'package:flutter_application_demo/list_transection.dart';
import 'package:flutter_application_demo/appbar.common.dart';
import 'package:flutter_application_demo/carousel_slider.common.dart';
import 'package:flutter_application_demo/card_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CardModel> cardData = [
    CardModel(cardNumber: "0000-1111-2222-4444", balance: 150000.0),
    CardModel(cardNumber: "1181-2225-1243-3456", balance: 50000.0),
    CardModel(cardNumber: "9203-1111-1890-2914", balance: 3000.0),
    CardModel(cardNumber: "6874-6789-2537-8728", balance: 400000.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCommon(
        title: "Home page",
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CarouselSliderCommon(
                cardData: cardData,
              ),
              const ListTransection(),
            ],
          ),
        ),
      ),
    );
  }
}
