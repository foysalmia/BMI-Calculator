import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constantance.dart';

class ResultCard extends StatelessWidget {
  const ResultCard(
      {Key? key,
      required this.label,
      required this.feedback,
      required this.result})
      : super(key: key);

  final String label;
  final String result;
  final String feedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                'Your BMI Result',
                style: kResutlHeadline,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUseable(
              color: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    label.toUpperCase(),
                    style: kResultString,
                  ),
                  Text(
                    result,
                    style: kResultNumber,
                  ),
                  Text(
                    feedback,
                    style: kResultFeedBack,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            tittle: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
