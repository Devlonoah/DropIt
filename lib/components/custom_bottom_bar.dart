import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key key,
    this.backgroundColor,
  }) : super(key: key);
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Container(
      height: screenHeight * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(color: backgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(
              Icons.settings_backup_restore,
              size: 30,
            ),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
