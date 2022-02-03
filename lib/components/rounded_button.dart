import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onClick;

  RoundedButton({this.icon, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        height: 50,
        width: 50,
      ),
      shape: const CircleBorder(),
      onPressed: onClick,
      fillColor: const Color(0xFF1e1e1f),
      child: Icon(icon),
    );
  }
}
