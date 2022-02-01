import 'package:flutter/material.dart';
import 'constantance.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      color: kBottomButtonColor,
      width: double.infinity,
      height: 50.0,
      child: const Center(
        child: Text(
          'CALCULATE YOUR BMI',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
