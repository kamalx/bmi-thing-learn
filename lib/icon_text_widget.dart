import 'package:flutter/cupertino.dart';

class IconTextWidget extends StatelessWidget {
  IconTextWidget({@required this.icon, @required this.label});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label.toUpperCase(),
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFFD8DE98),
          ),
        ),
      ],
    );
  }
}
