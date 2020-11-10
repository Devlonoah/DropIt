import 'package:flutter/material.dart';

import 'package:drop_point/constants.dart';

class HeaderWithButton extends StatelessWidget {
  const HeaderWithButton({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: kHeaderTextStyle,
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.line_weight, size: 40, color: iconColor),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
