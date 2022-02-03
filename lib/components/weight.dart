import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constantance.dart';
import 'rounded_button.dart';

class Weight extends StatefulWidget {
  Weight({Key? key, required this.weight}) : super(key: key);
  int weight;

  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
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
          widget.weight.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButton(
              icon: FontAwesomeIcons.minus,
              onClick: () {
                setState(() {
                  if (widget.weight > 0) {
                    widget.weight--;
                  }
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
                  widget.weight++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
