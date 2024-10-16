import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle styleRegular30 = TextStyle(
    fontFamily: "GT Sectra",
    fontSize: 30,
  );
  static const TextStyle styleRegular20 = TextStyle(
    fontFamily: "GT Sectra",
    fontSize: 20,
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleBold20 = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle styleBold18 = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static const TextStyle styleBold16 = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleMedium18 = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.white.withOpacity(.7),
  );
  static const TextStyle styleMedium16 = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium14 = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white.withOpacity(.7),
  );
}
