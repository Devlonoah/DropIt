import 'package:drop_point/constants.dart';
import 'package:flutter/material.dart';

class CenterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    return Container(
      height: screenHeight / 2,
      color: kBottomBarBgColor,
      //TODO: add svg or png here
    );
  }
}
