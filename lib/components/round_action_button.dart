import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundActionButton extends StatelessWidget {
  RoundActionButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
      ),
      shape: CircleBorder(),
      fillColor: k_ACTION_BUTTON_COLOR,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
      onPressed: onPressed,
    );
  }
}
