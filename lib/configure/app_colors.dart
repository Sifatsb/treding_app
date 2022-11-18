import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors{
  static const primaryColor       = Color(0xff3a0581);
  static const secondaryColor     = Color(0xffFF1C62);
  static const backgroundColor    = Color(0xffffffff);
  static const iconColor          = Color(0xff3a0581);
  static var shadowColor          = Colors.grey.shade200;
  static const buttonColor        = Color(0xffda3f81);
  static const appBarColor        = Colors.white;
  static const redColor           = Colors.redAccent;
  static const greyColor          = Colors.grey;
  static const textColor          = Colors.white;
  static const textColor2          = Colors.black;
  static const grayLight          = Color(0xff8b97a2);
  static final gradientColor      = [const Color(0xff040268), const Color(0xffFF1C62)];
}

class AppStyle{
  static final titleText          = GoogleFonts.satisfy(textStyle: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: AppColors.textColor));
  static final titleText2          = GoogleFonts.satisfy(textStyle: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: AppColors.textColor2));
  static const timingText         = TextStyle(color: Colors.white);
  static const appTitle           = 'Training';
  static const checkOutStyle      = TextStyle(fontWeight: FontWeight.w600, fontSize: 15);
  static const checkOutTextStyle  = TextStyle(fontWeight: FontWeight.w300, fontSize: 16);
  static const title1             = TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: AppColors.textColor);
  static const title3             = TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: AppColors.textColor);
  static const title3Override     = TextStyle(fontWeight: FontWeight.w200, fontSize: 14, color: AppColors.textColor);
  static final title1Override     = TextStyle(fontWeight: FontWeight.w200, fontSize: 28, color: Colors.white.withOpacity(0.8));
  static const bodyText1          = TextStyle(fontWeight: FontWeight.w200, fontSize: 14, color: AppColors.grayLight);
  static const bodyText1Override  = TextStyle(fontWeight: FontWeight.w200, fontSize: 14, color: AppColors.textColor, letterSpacing: 1);
}

class AppSize{
  static const borderRadiusSize = 15.00;
}