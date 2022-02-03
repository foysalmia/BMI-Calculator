import 'package:flutter/material.dart';
import '../constantance.dart';

class HeightCard extends StatefulWidget {
   HeightCard({
    Key? key,required this.height
  }) : super(key: key);
  int height;
  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'HEIGHT',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              widget.height.toString(),
              style: kNumberTextStyle,
            ),
            const Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        Slider(
            value: widget.height.toDouble(),
            min: 120.0,
            max: 220.0,
            activeColor: kBottomButtonColor,
            inactiveColor: Colors.white10,
            onChanged: (double newValue) {
              setState(() {
                widget.height = newValue.round();
              });
            }),
      ],
    );
  }
}
