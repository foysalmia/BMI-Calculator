import 'package:flutter/material.dart';
import '../constantance.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, @required this.tittle, @required this.onPress})
      : super(key: key);

  final String? tittle;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(top: 5.0),
        color: kBottomButtonColor,
        width: double.infinity,
        height: 50.0,
        child: Center(
          child: Text(
            tittle.toString(),
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                letterSpacing: 2.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
