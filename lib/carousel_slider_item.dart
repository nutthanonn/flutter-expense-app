import 'package:flutter/material.dart';
import 'package:flutter_application_demo/card_number.dart';
import 'package:flutter_application_demo/logo_card.dart';
import 'package:flutter_application_demo/card_model.dart';
import 'package:flutter_application_demo/money_control.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem({Key? key, required this.cardData})
      : super(key: key);

  final CardModel cardData;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0,
      ),
      decoration: const BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const SizedBox(
                  width: 150,
                  child: LogoCard(),
                ),
                MoneyControl(
                  balance: cardData.balance,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "MasterCard",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardNumber(
                          cardNumber: cardData.cardNumber.substring(0, 4),
                        ),
                        const CardNumber(
                          cardNumber: "****",
                        ),
                        const CardNumber(
                          cardNumber: "****",
                        ),
                        CardNumber(
                          cardNumber: cardData.cardNumber.substring(15, 19),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
