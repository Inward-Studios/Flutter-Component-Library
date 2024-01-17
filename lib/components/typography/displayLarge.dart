import 'package:flutter/material.dart';

class DisplayLarge extends StatelessWidget {
  const DisplayLarge({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: Theme.of(context).textTheme.displayLarge?.fontSize),
    );
  }
}
