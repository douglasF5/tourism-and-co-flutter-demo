import 'package:flutter/material.dart';

class Styles {
  static const textSizeLarge = 22.0;
  static const textSizeMedium = 16.0;
  static const textSizeSmall = 14.0;

  static const String fontNameDefault = 'Montserrat';

  static const defaultPaddingS = 12.0;
  static const defaultPaddingM = 16.0;

  static const Color textColorDark = Colors.black;
  static const Color textColorLight = Colors.white;
  static const Color textColorAccent = Color.fromARGB(255, 126, 15, 7);
  static const Color textColorFaint = Color.fromRGBO(125, 125, 125, 1.0);

  static const appBarTextStyleHome = TextStyle(
    fontFamily: fontNameDefault,
    fontWeight: FontWeight.w600,
    fontSize: 28.0,
    color: Colors.black,
  );

  static const appBarTextStyle = TextStyle(
    fontFamily: fontNameDefault,
    fontWeight: FontWeight.w600,
    fontSize: textSizeMedium,
    color: Colors.black,
  );

  static const titleTextStyle = TextStyle(
    fontFamily: fontNameDefault,
    fontWeight: FontWeight.w600,
    fontSize: textSizeLarge,
    color: textColorDark,
  );

  static const subTitleTextStyle = TextStyle(
    fontFamily: fontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: textSizeMedium,
    color: textColorAccent,
  );

  static const captionTextStyle = TextStyle(
    fontFamily: fontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: textSizeSmall,
    color: textColorDark,
  );

  static const body1TextStyle = TextStyle(
    fontFamily: fontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: textSizeMedium,
    color: Colors.black,
  );
}
