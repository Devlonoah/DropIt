import 'package:drop_point/constants.dart';
import 'package:flutter/material.dart';

class DropDetails extends StatelessWidget {
  const DropDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Distance',
                style: kInfoTextTitleTextStyle,
              ),
              Text(
                '2,3 km',
                style: kInfoTextTitleTextStyle,
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Delivery Address',
                    style: kInfoTextTitleTextStyle,
                  ),
                  Text(
                    'Podbrezje XIV,2,10000 Zagreb',
                    style: kInfoTextSubtitleTextStyle,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Package Weight',
                style: kInfoTextTitleTextStyle,
              ),
              Text(
                '0.4 kg',
                style: kInfoTextTitleTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
