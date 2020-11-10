import 'package:flutter/material.dart';

import 'package:drop_point/constants.dart';

class Button extends StatelessWidget {
  final String title;
  final Function onPress;
  final Color color;
  final double elevation;
  const Button({
    Key key,
    this.title,
    this.onPress,
    this.color,
    this.elevation,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return MaterialButton(
      onPressed: onPress,
      elevation: elevation,
      highlightElevation: 0.0,
      enableFeedback: false,
      height: screenHeight * 0.08,
      minWidth: screenWidth * 0.7,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        title,
        style: kButtonLabelTextStyle,
      ),
    );
  }
}
