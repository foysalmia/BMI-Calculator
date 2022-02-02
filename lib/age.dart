import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constantance.dart';
import 'rounded_button.dart';

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'AGE',
          style: kLabelTextStyle,
        ),
        Text(
          age.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButton(
              icon: FontAwesomeIcons.minus,
              onClick: () {
                setState(() {
                  age--;
                });
              },
            ),
            const SizedBox(
              width: 15.0,
            ),
            RoundedButton(
              icon: FontAwesomeIcons.plus,
              onClick: () {
                setState(() {
                  age++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
