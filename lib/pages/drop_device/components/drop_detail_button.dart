import 'package:drop_point/constants.dart';
import 'package:drop_point/pages/drop_info/drop_info.dart';
import 'package:flutter/material.dart';

class DropDetailButton extends StatelessWidget {
  const DropDetailButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, DropInfoPage.id);
          },
          child: Container(
            alignment: Alignment.center,
            height: screenHeight * 0.08,
            width: screenWidth * 0.5,
            decoration: BoxDecoration(
              color: kDropDetailButtonColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
              ),
            ),
            child: Text(
              'Drop Details',
              style: kButtonLabelTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
