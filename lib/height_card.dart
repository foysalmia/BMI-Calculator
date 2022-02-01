import 'package:flutter/material.dart';
import 'constantance.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'HEIGHT',
          style: kLabelTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          '180',
          style: kNumberTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 13.0,
        ),
        SizedBox(
          height: 2.0,
          width: double.infinity,
        ),
      ],
    );
  }
}
