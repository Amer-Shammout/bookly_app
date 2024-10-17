import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular30(context) {
    return TextStyle(
      fontFamily: kGTSectra,
      fontSize: getResponsiveFontSize(context, baseFontSize: 30),
    );
  }

  static TextStyle styleRegular20(context) {
    return TextStyle(
      fontFamily: kGTSectra,
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontFamily: kMontserrat,
      fontSize: getResponsiveFontSize(context, baseFontSize: 14),
      fontWeight: FontWeight.w400,
      color: Colors.white.withOpacity(.5),
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontFamily: kMontserrat,
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold20(context) {
    return TextStyle(
      fontFamily: kMontserrat,
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold15(context) {
    return TextStyle(
      fontFamily: kMontserrat,
      fontSize: getResponsiveFontSize(context, baseFontSize: 15),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold18(context) {
    return TextStyle(
      fontFamily: kMontserrat,
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontWeight: FontWeight.w700,
      color: Colors.black,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: Colors.white,
      fontFamily: kMontserrat,
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium18(context) {
    return TextStyle(
      fontFamily: kMontserrat,
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(.7),
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontFamily: kMontserrat,
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium14(context) {
    return TextStyle(
      fontFamily: kMontserrat,
      fontSize: getResponsiveFontSize(context, baseFontSize: 14),
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(.7),
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * baseFontSize;

  double lowerLimit = baseFontSize * .8;
  double upperLimit = baseFontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < 600) {
    return screenWidth / 400;
  } else if (screenWidth < 900) {
    return screenWidth / 700;
  } else {
    return screenWidth / 1000;
  }
}
