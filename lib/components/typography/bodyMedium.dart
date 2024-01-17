import 'package:flutter/material.dart';

class BodyMedium extends StatelessWidget {
  const BodyMedium({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize),
    );
  }
}
