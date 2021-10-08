import 'dart:io';
import 'package:design_courses/layout/size_config.dart';
import 'package:flutter/material.dart';

// Colors
const kBackgroundColor = Color(0xFFE7EEFB);
const kSidebarBackgroundColor = Color(0xFFF1F4FB);
const kCardPopupBackgroundColor = Color(0xFFF5F8FF);
const kPrimaryLabelColor = Color(0xFF242629);
const kSecondaryLabelColor = Color(0xFF797F8A);
const kShadowColor = Color.fromRGBO(72, 76, 82, 0.16);
const kCourseElementIconColor = Color(0xFF17294D);

// Text Styles

var kLargeTitleStyle = TextStyle(
  fontSize: SizeConfig.blockSizeVertical * 3,
  fontWeight: FontWeight.bold,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kTitle1Style = TextStyle(
  fontSize: SizeConfig.blockSizeVertical * 3,
  fontWeight: FontWeight.bold,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kCardTitleStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: SizeConfig.blockSizeVertical * 3,
  decoration: TextDecoration.none,
);
var kTitle2Style = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kHeadlineLabelStyle = const TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w800,
  color: kPrimaryLabelColor,
  fontFamily: 'SF Pro Text',
  decoration: TextDecoration.none,
);
//double pad15 = SizeConfig.blockSizeVertical * 2;
double pad12 = SizeConfig.blockSizeVertical * 1.6;
double pad20 = SizeConfig.blockSizeVertical * 2.67;

double rad40 = SizeConfig.blockSizeVertical * 5.33;
double rad14 = SizeConfig.blockSizeVertical * 1.8640;
double rad16 = SizeConfig.blockSizeVertical * 2.13;
double rad18 = SizeConfig.blockSizeVertical * 2.40;
double rad30 = SizeConfig.blockSizeVertical * 4;

double height320 = SizeConfig.screenHeight * 0.3571;
double height240 = SizeConfig.screenHeight * 0.2679;
double height100 = SizeConfig.screenHeight * 0.1117;
double height120 = SizeConfig.screenHeight * 0.1340;
double height20 = SizeConfig.screenHeight * 0.0220;
double height16 = SizeConfig.screenHeight * 0.0176;
double height14 = SizeConfig.screenHeight * 0.0154;
double height12 = SizeConfig.screenHeight * 0.0132;
double height60 = SizeConfig.screenHeight * 0.066;
double height30 = SizeConfig.screenHeight * 0.033;
double height40 = SizeConfig.screenHeight * 0.044;

double width60 = SizeConfig.screenWidth * 0.1450;
double width12 = SizeConfig.screenWidth * 0.0290;
double width15 = SizeConfig.screenWidth * 0.0362;
double width20 = SizeConfig.screenWidth * 0.0483;
double width25 = SizeConfig.screenWidth * 0.0604;
double width30 = SizeConfig.screenWidth * 0.0725;
double width40 = SizeConfig.screenWidth * 0.0967;
double width240 = SizeConfig.screenWidth * 0.5780;
double width280 = SizeConfig.screenWidth * 0.6743;

var kSubtitleStyle = TextStyle(
  fontSize: SizeConfig.blockSizeVertical * 2,
  color: kSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kBodyLabelStyle = TextStyle(
  fontSize: 16.0,
  color: Colors.black,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kCalloutLabelStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w800,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSecondaryCalloutLabelStyle = TextStyle(
  fontSize: 16.0,
  color: kSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSearchPlaceholderStyle = TextStyle(
  fontSize: SizeConfig.blockSizeVertical * 2,
  color: kSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSearchTextStyle = TextStyle(
  fontSize: 13.0,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kCardSubtitleStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  color: const Color(0xE6FFFFFF),
  fontSize: SizeConfig.blockSizeVertical * 2,
  decoration: TextDecoration.none,
);
var kCaptionLabelStyle = TextStyle(
  fontSize: 12.0,
  color: kSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
