// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/calculator_branin.dart';
import 'package:bmi_calculator/components/weight.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constantance.dart';
import '../components/card_child.dart';
import '../components/reuseable_card.dart';
import '../components/height_card.dart';
import '../components/bottom_button.dart';
import '../components/age.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 40;

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
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReUseable(
                    color: selectedGender == Gender.male
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: ChildCard(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReUseable(
                    color: selectedGender == Gender.female
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: ChildCard(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReUseable(
              color: kActiveColor,
              cardChild: HeightCard(
                height: height,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUseable(
                    color: kActiveColor,
                    cardChild: Weight(
                      weight: weight,
                    ),
                  ),
                ),
                Expanded(
                  child: ReUseable(
                    color: kActiveColor,
                    cardChild: Age(),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
              tittle: 'CALCULATE YOUR BMI',
              onPress: () {
                BmiBrain brain = BmiBrain(height: height, weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultCard(
                      result: brain.getBmi(),
                      label: brain.getResult(),
                      feedback: brain.feedback(),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
