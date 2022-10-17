import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_demo/carousel_slider_item.dart';
import 'package:flutter_application_demo/models/model_card.dart';

class CarouselSliderCommon extends StatelessWidget {
  const CarouselSliderCommon({Key? key, required this.cardData})
      : super(key: key);

  final List<ModelCard> cardData;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: cardData.map((element) {
        return CarouselSliderItem(
          cardData: element,
        );
      }).toList(),
      options: CarouselOptions(
        height: 250,
        enableInfiniteScroll: false,
      ),
    );
  }
}
