import 'package:componentlibrary/components/buttons/icon_spring_button.dart';
import 'package:componentlibrary/components/buttons/spring_button.dart';
import 'package:componentlibrary/components/typography/bodyMedium.dart';
import 'package:componentlibrary/components/typography/displayLarge.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DisplayLarge(text: "Button"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SpringButton(
                  text: "Press Me",
                  isOutlined: true,
                ),
                SpringButton(
                  text: "Press Me",
                  isOutlined: false,
                ),
              ],
            ),
            DisplayLarge(text: "Icon Button"),
            Text(
              "For this, please download the icon package, lucide_icons, from pub.dev",
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconSpringButton(isOutlined: true, text: "Login with Email"),
                IconSpringButton(isOutlined: false, text: "Login with Email"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
