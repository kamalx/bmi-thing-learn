import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'fiddle_card.dart';
import 'icon_text_widget.dart';
import 'constants.dart';

enum GenderType {
  male,
  female,
  boy,
  girl,
  fluid,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bmi calculator'.toUpperCase()),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FiddleCard(
                    onPress: () {
                      setState(() {
                        gender = GenderType.boy;
                        print(gender);
                      });
                    },
                    colour:
                        gender == GenderType.boy ? ACTIVE_CARD : INACTIVE_CARD,
                    cardChild: IconTextWidget(
                      label: 'boy',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: FiddleCard(
                    onPress: () {
                      setState(() {
                        gender = GenderType.girl;
                        print(gender);
                      });
                    },
                    colour:
                        gender == GenderType.girl ? ACTIVE_CARD : INACTIVE_CARD,
                    cardChild: IconTextWidget(
                      label: 'girl',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: FiddleCard(
              onPress: () {},
              cardChild: Text('height'),
              colour: ACTIVE_CARD,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FiddleCard(
                    onPress: () {},
                    colour: ACTIVE_CARD,
                  ),
                ),
                Expanded(
                  child: FiddleCard(
                    onPress: () {},
                    colour: ACTIVE_CARD,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: CTA_COLOR,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: CTA_HEIGHT,
          ),
        ],
      ),
    );
  }
}
