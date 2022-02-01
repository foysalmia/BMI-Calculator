import 'package:flutter/material.dart';
import 'constantance.dart';

class ChildCard extends StatelessWidget {
  final IconData? icon;
  final String? label;

  ChildCard({@required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          label.toString(),
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
