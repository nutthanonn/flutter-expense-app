import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_demo/carousel_slider_item.dart';
import 'package:flutter_application_demo/drowdown_menu.dart';
import 'package:flutter_application_demo/input.common.dart';
import 'package:flutter_application_demo/models/model_card.dart';
import 'package:just_audio/just_audio.dart';

class AddTransectionPage extends StatefulWidget {
  final ModelCard cardData;
  const AddTransectionPage({Key? key, required this.cardData})
      : super(key: key);

  @override
  State<AddTransectionPage> createState() => _AddTransectionPageState();
}

class _AddTransectionPageState extends State<AddTransectionPage> {
  final AudioPlayer audioPlayer = AudioPlayer();
  final List<String> transectionType = ["withdraw", "deposite"];
  String dropdownvalue = 'withdraw';
  bool errorTitlehandler = false;
  bool erorrAmounthandler = false;

  String title = "";
  double amount = 0.0;

  void handleChangeTitle(String value) {
    setState(() {
      title = value;
    });
  }

  void handleChangeAmount(String value) {
    setState(() {
      amount = value == "" ? 0.0 : double.parse(value);
    });
  }

  void setDropdownVal(String? val) {
    setState(() {
      dropdownvalue = val!;
    });
  }

  void onSubmited() async {
    setState(() {
      errorTitlehandler = title == "" ? true : false;
      erorrAmounthandler = amount == 0.0 ? true : false;
    });

    if (erorrAmounthandler == false && errorTitlehandler == false) {
      Navigator.pop(context);
      await audioPlayer.setAsset("assets/sounds/cash-purchase.mp3");
      await audioPlayer.play();
    }
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
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 250.0,
                  width: double.infinity,
                  child: CarouselSliderItem(cardData: widget.cardData),
                ),
              ),
              DropdownMenu(
                dropdownItem: transectionType,
                value: dropdownvalue,
                handleChange: setDropdownVal,
              ),
              InputCommon(
                placeholder: "title",
                onChanged: handleChangeTitle,
                errorhandler: errorTitlehandler,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: InputCommon(
                  placeholder: "Amount",
                  onChanged: handleChangeAmount,
                  keyBoardType: TextInputType.number,
                  errorhandler: erorrAmounthandler,
                ),
              ),
              TextButton(
                onPressed: onSubmited,
                child: const Text(
                  "Add Transection",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  elevation: MaterialStateProperty.all(2.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
