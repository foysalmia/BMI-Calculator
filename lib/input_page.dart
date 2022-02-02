// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/weight.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constantance.dart';
import 'card_child.dart';
import 'reuseable_card.dart';
import 'height_card.dart';
import 'bottom_button.dart';
import 'age.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

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
              cardChild: HeightCard(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUseable(
                    color: kActiveColor,
                    cardChild: Weight(),
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
          const BottomButton(),
        ],
      ),
    );
  }
}
