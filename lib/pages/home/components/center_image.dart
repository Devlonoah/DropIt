import 'package:drop_point/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CenterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    return Container(
      height: screenHeight / 4,

      //TODO: add svg or png here

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withOpacity(0.1),
        // image: DecorationImage(
        //     image: AssetImage('assets/images/drone.png'), fit: BoxFit.cover),
      ),

      child: Image(
        image: AssetImage('assets/images/drone.png'),
      ),
    );
  }
}
