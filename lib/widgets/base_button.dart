import 'package:cooking_share/values/values.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final double buttonWidth;
  final double buttonHeight;
  final BoxDecoration decoration;
  final String buttonText;
  final TextStyle buttonTextStyle;
  final GestureTapCallback onTap;

  BaseButton(this.buttonText,
      {this.buttonWidth = Sizes.WIDTH_300,
      this.buttonHeight = Sizes.HEIGHT_60,
      this.decoration = Decorations.primaryButtonDecoration,
      this.buttonTextStyle = Styles.normalTextStyle,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: decoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              textAlign: TextAlign.center,
              style: buttonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
