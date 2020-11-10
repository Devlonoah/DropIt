import 'package:drop_point/components/buttom.dart';
import 'package:drop_point/pages/drop_device/drop_device.dart';
import 'package:flutter/material.dart';
import 'package:drop_point/constants.dart';
import 'components/center_image.dart';
import 'components/header.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Scaffold(
      backgroundColor: kHomeBackgroundColor,
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Header(),
              CenterImage(),
              Button(
                title: 'Sign up',
                elevation: 3.0,
                color: kSignUpButtonColor,
                onPress: () => Navigator.pushNamed(context, DropDevice.id),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
