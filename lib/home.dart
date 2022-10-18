import 'package:flutter/material.dart';
import 'package:flutter_application_demo/list_transection.dart';
import 'package:flutter_application_demo/appbar.common.dart';
import 'package:flutter_application_demo/carousel_slider.common.dart';
import 'package:flutter_application_demo/models/model_card.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<ModelCard> cardData = [
    ModelCard(cardNumber: "1232-1234-2356-4785", balance: 3000)
  ];

  // Future<List<ModelCard>> fetchCard() async {
  //   http.Response res =
  //       await http.get(Uri.parse('http://127.0.0.1:8000/api/card'));

  //   List list = jsonDecode(res.body)['data'];

  //   List<ModelCard> result = list.map((e) => ModelCard.fromJson(e)).toList();
  //   return result;
  // }

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
              CarouselSliderCommon(cardData: cardData),
              // FutureBuilder(
              //   future: fetchCard(),
              //   builder: (BuildContext context,
              //       AsyncSnapshot<List<ModelCard>> snapshot) {
              //     if (snapshot.hasData) {
              //       return CarouselSliderCommon(
              //         cardData: snapshot.data as List<ModelCard>,
              //       );
              //     } else {
              //       return const Center(
              //         child: CircularProgressIndicator(),
              //       );
              //     }
              //   },
              // ),
              const ListTransection(),
            ],
          ),
        ),
      ),
    );
  }
}
