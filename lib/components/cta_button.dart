import 'package:flutter/material.dart';
import '../constants.dart';

class CTAButton extends StatelessWidget {
  CTAButton({@required this.buttonTitle, @required this.onTap});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle.toUpperCase(),
            style: k_CTA_TEXT_STYLE,
          ),
        ),
        color: k_CTA_COLOR,
        margin: EdgeInsets.only(top: 10.0),
        // padding: EdgeInsets.only(bottom: 20.0), // doesn't work on apna platform, but perhaps required for the modern iPhones.
        width: double.infinity,
        height: k_CTA_HEIGHT,
      ),
    );
  }
}
