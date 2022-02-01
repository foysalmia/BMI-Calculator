// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constantance.dart';
import 'card_child.dart';
import 'reuseable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReUseable(
                  color: kBoxColor,
                  cardChild: ChildCard(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReUseable(
                  color: kBoxColor,
                  cardChild: ChildCard(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReUseable(
              color: kBoxColor,
              cardChild: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                      style: TextStyle(
                          fontSize: 60.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
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
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUseable(),
                ),
                Expanded(
                  child: ReUseable(),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            color: kBottomButtonColor,
            width: double.infinity,
            height: 50.0,
            child: Center(
              child: Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
