// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'constantance.dart';

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
                child: ReUseable(),
              ),
              Expanded(
                child: ReUseable(),
              ),
            ],
          )),
          Expanded(
            child: ReUseable(),
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
            child: Text(
              'Calculate',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class ReUseable extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: kBoxColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
