import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/add_transection_page.dart';
import 'package:flutter_application_demo/list_transection.dart';
import 'package:flutter_application_demo/appbar.common.dart';
import 'package:flutter_application_demo/carousel_slider.common.dart';
import 'package:flutter_application_demo/models/model_card.dart';
import 'package:flutter_application_demo/models/model_card_transection.dart';
import 'package:flutter_application_demo/models/model_transection.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _initialPage = 0;

  void onClickNavbar() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (builder) => AddTransectionPage(
          cardData: cardWithTransection[_initialPage].card,
        ),
      ),
    );
  }

  dynamic onPageChange(int index, CarouselPageChangedReason reason) {
    setState(() {
      _initialPage = index;
    });
  }

  List<ModelCardTrasection> cardWithTransection = [
    ModelCardTrasection(
      card: ModelCard(cardNumber: "1232-1234-2356-4785", balance: 3000),
      transection: [
        ModelTransection(
          id: "2",
          title: "Salary",
          amount: 3000,
          transectionType: "deposit",
          date: DateTime.now(),
        ),
        ModelTransection(
          id: "2",
          title: "Food",
          amount: 1000,
          transectionType: "withdraw",
          date: DateTime.now(),
        ),
      ],
    ),
    ModelCardTrasection(
      card: ModelCard(cardNumber: "2356-4758-1256-5785", balance: 3000),
      transection: [
        ModelTransection(
          id: "1",
          title: "Salary",
          amount: 4500,
          transectionType: "deposit",
          date: DateTime.now(),
        ),
        ModelTransection(
          id: "2",
          title: "Food",
          amount: 1000,
          transectionType: "withdraw",
          date: DateTime.now(),
        ),
        ModelTransection(
          id: "3",
          title: "Study",
          amount: 2340,
          transectionType: "withdraw",
          date: DateTime.now(),
        )
      ],
    )
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
      appBar: AppBarCommon(
        title: "Home page",
        onClick: onClickNavbar,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CarouselSliderCommon(
                cardData: cardWithTransection.map((e) => e.card).toList(),
                initialPage: _initialPage,
                onPageChange: onPageChange,
              ),
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
              ListTransection(
                transectionData: cardWithTransection[_initialPage].transection,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
