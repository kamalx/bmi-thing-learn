import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/fiddle_card.dart';
import 'package:bmi_calculator/icon_text_widget.dart';

const CARD_COLOR = 0XFF1D1E33;
const CTA_COLOR = 0xFFEB1555;
const CTA_HEIGHT = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bmi calculator'.toUpperCase()),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                FiddleCard(
                  colour: Color(CARD_COLOR),
                  cardChild: IconTextWidget(
                    label: 'boy',
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
                FiddleCard(
                  colour: Color(CARD_COLOR),
                  cardChild: IconTextWidget(
                    label: 'girl',
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ],
            ),
          ),
          FiddleCard(
            colour: Color(CARD_COLOR),
          ),
          Expanded(
            child: Row(
              children: [
                FiddleCard(
                  colour: Color(CARD_COLOR),
                ),
                FiddleCard(
                  colour: Color(CARD_COLOR),
                ),
              ],
            ),
          ),
          Container(
            color: Color(CTA_COLOR),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: CTA_HEIGHT,
          ),
        ],
      ),
    );
  }
}
