import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constantance.dart';
import 'rounded_button.dart';

class Weight extends StatefulWidget {
  const Weight({ Key? key }) : super(key: key);

  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {

  int weight = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'WEIGHT',
          style: kLabelTextStyle,
        ),
        Text(
          weight.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButton(
              icon: FontAwesomeIcons.minus,
              onClick: () {
                setState(() {
                  weight--;
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
                  weight++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}