import 'package:drop_point/constants.dart';
import 'package:flutter/material.dart';

class DeviceImageAndCard extends StatelessWidget {
  const DeviceImageAndCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Container(
      height: screenHeight / 2,
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: screenHeight * 0.08,
            width: screenWidth * 0.16,
            decoration: BoxDecoration(
              color: kFavouriteButtonBgColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Icon(
              Icons.star,
              color: iconColor,
              size: size.longestSide * 0.05,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.001,
          ),
          Expanded(
            child: Container(
              height: screenHeight / 1,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
              ),
              child: Stack(
                alignment: Alignment.centerRight,
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: screenHeight * 0.4,
                    width: screenWidth * 0.7,
                    decoration: BoxDecoration(
                      color: kDeviceBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              bottom: screenHeight * 0.03,
                              left: screenWidth * 0.05,
                              right: screenWidth * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Phantom 3',
                                    style: kProductTitleTextStyle,
                                  ),
                                  Text(
                                    'Standard',
                                    style: kProductSubtitleTextStyle,
                                  )
                                ],
                              ),
                              Icon(
                                Icons.photo_size_select_actual,
                                color: kDeviceTextColor,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
