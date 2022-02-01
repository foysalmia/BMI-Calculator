import 'package:flutter/material.dart';

class ReUseable extends StatelessWidget {
  final Color? color;
  final Widget? cardChild;

  ReUseable({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: cardChild,
    );
  }
}