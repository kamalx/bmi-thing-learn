import 'package:flutter/material.dart';

class FiddleCard extends StatelessWidget {
  FiddleCard({
    @required this.onPress,
    @required this.colour,
    this.cardChild,
  });

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
