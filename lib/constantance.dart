import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF090C22);
const kActiveColor = Color(0xFF101427);
const kInactiveColor = Color(0xFF0D1020);
const kBottomButtonColor = Color(0xFFEA1556);
const kSizedBoxHeight = 15.0;

const kTextTheme = TextTheme(
  bodyText1: TextStyle(
    color: Colors.white,
  ),
);

const kLabelTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
);

const kNumberTextStyle =
    TextStyle(fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.w900);

const kResutlHeadline = TextStyle(
  color: Colors.white,
  fontSize: 35.0,
  fontWeight: FontWeight.w800,
);

const kResultString = TextStyle(
  color: Colors.greenAccent,
  fontSize: 24,
  letterSpacing: 2.0,
);

const kResultNumber = TextStyle(
  fontSize: 100,
  color: Colors.white,
  fontWeight: FontWeight.w900,
);

const kResultFeedBack = TextStyle(color: Colors.white, fontSize: 18);

enum Gender {
  male,
  female,
}
