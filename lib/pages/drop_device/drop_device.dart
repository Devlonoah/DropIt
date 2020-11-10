import 'package:drop_point/constants.dart';
import 'package:drop_point/pages/drop_device/components/device_image_and_card.dart';
import 'package:drop_point/components/header_with_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/custom_bottom_bar.dart';
import 'components/device_info.dart';
import 'components/drop_detail_button.dart';

class DropDevice extends StatelessWidget {
  static String id = 'DropDevice';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          decoration: kCardDecoration,
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: screenHeight * 0.04),
              HeaderWithButton(
                title: 'My drones',
              ),
              DeviceImageAndCard(),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              DeviceInfo(),
              Spacer(),
              DropDetailButton(),
              CustomBottomBar(
                backgroundColor: kBottomBarBgColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
