import 'package:flutter/material.dart';

final kHomeBackgroundColor = Color(0xFF373A9D);
final kSignUpButtonColor = Color(0xFF53C09D);
final kBottomBarBgColor = Color(0xFF3DC4B9);
final kFavouriteButtonBgColor = Color(0xFFFFC46C);
final kDropDetailButtonColor = Color(0xFFFFC46C);
final kDetailsTextStyleInfo = TextStyle(
  color: Color(0xFF8FF0DA),
  fontWeight: FontWeight.bold,
);
final kDeviceBackgroundColor = Color(0xFF92F1DC);
final kConfirmButtonColor = Color(0xFF373A9D);
final kDetailsTextStyleTitle = TextStyle(
  color: Color(0xFFFFFFFF),
  fontWeight: FontWeight.bold,
);
final kDeviceTextColor = Color(0xFF318B83);
final iconColor = Colors.white;
final kButtonLabelTextStyle =
    TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);
final kHeaderTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);
final kProductTitleTextStyle = TextStyle(
    color: Color(0xFF318B83), fontWeight: FontWeight.bold, fontSize: 30);

final kProductSubtitleTextStyle = TextStyle(
    color: Color(0xFF318B83), fontWeight: FontWeight.w400, fontSize: 20);
final kCardShadowColor = Color(0xFF1C7771);

//drfinalop device background gradient color.....
final kGradientColor1 = Color(0xFF3AC5BA);
final kGradientColor2 = Color(0xFF39C1B9);
final kGradientColor3 = Color(0xFF3EA6B8);
final kGradientColor4 = Color(0xFF4098B7);

//....abstract
final kCardDecoration = BoxDecoration(
  boxShadow: [
    BoxShadow(
      offset: Offset(0, 10),
      color: kCardShadowColor,
      spreadRadius: 20,
      blurRadius: 20,
    ),
  ],
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kGradientColor1,
      kGradientColor2,
      kGradientColor2,
      kGradientColor3,
      kGradientColor4
    ],
  ),
);

//drop info constants

final kGradColor1 = Color(0xFFFFC46D);
final kGradColor2 = Color(0xFFFFC26E);
final kGradColor3 = Color(0xFFFEBE72);
final kGradColor4 = Color(0xFFFDB678);
final kGradColor5 = Color(0xFFFDB37B);
final kGradColor6 = Color(0xFFFCAF7E);
final kGradColor7 = Color(0xFFFCAD80);
final kGradColor8 = Color(0XFFFCAA81);
final kGradColor9 = Color(0XFFFCA982);

final kInfoButtonColor = Color(0xFF34379E);
final kInfoTextTitleTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 25,
  fontWeight: FontWeight.w700,
);
final kInfoTextSubtitleTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

final kInfoBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kGradColor1,
      kGradColor1,
      kGradColor1,
      kGradColor1,
      kGradColor1,
      kGradColor2,
      kGradColor3,
      kGradColor4,
      kGradColor5,
      kGradColor6,
      kGradColor7,
      kGradColor8,
      kGradColor9
    ],
  ),
);
