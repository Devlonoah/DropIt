import 'package:drop_point/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'drop',
        style: kHeaderTextStyle.copyWith(fontSize: 30),
        children: [
          TextSpan(
              text: 'It',
              style: kHeaderTextStyle.copyWith(
                  color: kSignUpButtonColor, fontSize: 30)),
        ],
      ),
    );
  }
}
