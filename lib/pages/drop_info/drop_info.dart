import 'package:drop_point/components/buttom.dart';
import 'package:drop_point/components/custom_bottom_bar.dart';

import 'package:drop_point/pages/drop_info/components/drop_details.dart';
import 'package:drop_point/pages/drop_info/components/map_and_delivery_time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drop_point/constants.dart';

class DropInfoPage extends StatefulWidget {
  static String id = 'DropInfoPage';

  @override
  _DropInfoPageState createState() => _DropInfoPageState();
}

class _DropInfoPageState extends State<DropInfoPage>
    with SingleTickerProviderStateMixin {
  AnimationController _opacityController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    _opacityController = AnimationController(vsync: this);
    animation = Tween<double>(begin: 0.3, end: 1).animate(_opacityController)
      ..addListener(() {
        setState(() {});
      });
    _opacityController.duration = Duration(milliseconds: 800);
    _opacityController.forward();
  }

  @override
  void dispose() {
    _opacityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          decoration: kInfoBoxDecoration,
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Opacity(
                opacity: animation.value,
                child: MapAndDeliveryTime(),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              DropDetails(),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Button(
                title: 'Confirm',
                onPress: () {},
                color: kInfoButtonColor,
                elevation: 0.0,
              ),
              Spacer(),
              CustomBottomBar(
                backgroundColor: Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
