import 'package:drop_point/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Battery', style: kHeaderTextStyle),
              Row(
                children: <Widget>[
                  Icon(
                    CupertinoIcons.battery_25_percent,
                    size: 40,
                    color: kDeviceBackgroundColor,
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Text(
                    '34%',
                    style: kHeaderTextStyle.copyWith(
                        color: kDeviceBackgroundColor),
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
                'Speed rate',
                style: kHeaderTextStyle,
              ),
              Text('16 m/s',
                  style:
                      kHeaderTextStyle.copyWith(color: kDeviceBackgroundColor))
            ],
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Max package weight',
                style: kHeaderTextStyle,
              ),
              Text('3 kg',
                  style:
                      kHeaderTextStyle.copyWith(color: kDeviceBackgroundColor))
            ],
          )
        ],
      ),
    );
  }
}
