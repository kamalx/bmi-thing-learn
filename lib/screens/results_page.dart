import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/fiddle_card.dart';
import 'package:bmi_calculator/components/cta_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULTS'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: k_TITLE_TEXT_STYLE,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: FiddleCard(
              onPress: null,
              colour: k_ACTIVE_CARD,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: k_RESULT_TEXT_STYLE,
                  ),
                  Text(
                    bmiResult,
                    style: k_BMI_TEXT_STYLE,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: k_ADVICE_TEXT_STYLE,
                  )
                ],
              ),
            ),
          ),
          CTAButton(
            buttonTitle: 're-calculate',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
