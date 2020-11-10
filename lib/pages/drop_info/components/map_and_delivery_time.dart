import 'package:drop_point/components/header_with_button.dart';
import 'package:drop_point/constants.dart';
import 'package:flutter/material.dart';

class MapAndDeliveryTime extends StatelessWidget {
  const MapAndDeliveryTime({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Container(
      height: screenHeight * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kInfoButtonColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(60),
          bottomLeft: Radius.circular(60),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
              top: screenHeight * 0.27,
              right: screenWidth / 2.2,
              child: CircularProgressIndicator(
                backgroundColor: kGradColor9,
              )),
          Positioned(
            top: screenHeight * 0.035,
            right: 0,
            left: 0,
            child: HeaderWithButton(
              title: 'Drop details',
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.04,
            right: screenWidth * 0.05,
            child: RichText(
              textAlign: TextAlign.end,
              text: TextSpan(
                text: 'Estimated delivery\n',
                style: kInfoTextTitleTextStyle.copyWith(fontSize: 20),
                children: [
                  TextSpan(
                    text: 'time ',
                    style: kInfoTextTitleTextStyle.copyWith(fontSize: 20),
                  ),
                  TextSpan(
                    text: '7 min',
                    style: kInfoTextTitleTextStyle.copyWith(
                        color: kBottomBarBgColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
