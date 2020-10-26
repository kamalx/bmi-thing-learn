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
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bmi calculator'.toUpperCase()),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    colour: gender == GenderType.boy
                        ? k_ACTIVE_CARD
                        : k_INACTIVE_CARD,
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
                    colour: gender == GenderType.girl
                        ? k_ACTIVE_CARD
                        : k_INACTIVE_CARD,
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
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: k_LABEL_TEXT_STYLE,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: k_LABEL_NUMBER_TEXT_STYLE,
                      ),
                      Text(
                        'cm',
                        style: k_LABEL_TEXT_STYLE,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29FB65A5),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 26.0,
                        )),
                    child: Slider(
                      value: height.toDouble(),
                      min: k_MIN_HEIGHT,
                      max: k_MAX_HEIGHT,
                      inactiveColor: Color(0xFFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
              colour: k_ACTIVE_CARD,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FiddleCard(
                    onPress: () {},
                    colour: k_ACTIVE_CARD,
                  ),
                ),
                Expanded(
                  child: FiddleCard(
                    onPress: () {},
                    colour: k_ACTIVE_CARD,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: k_CTA_COLOR,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: k_CTA_HEIGHT,
          ),
        ],
      ),
    );
  }
}
