import 'package:flutter/material.dart';
import 'constantance.dart';

class ChildCard extends StatelessWidget {
  final IconData? icon;
  final String? label;

  ChildCard({@required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label.toString(),
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
