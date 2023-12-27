
import 'package:flutter/material.dart';

class UiWidgetSizes {
  static double phoneWidth(context) => MediaQuery.of(context).size.width;
  static double phoneHeight(context) => MediaQuery.of(context).size.height;

  static double ksiToolsRightPosition(orientation, context) =>
      orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width / 2 -
              (MediaQuery.of(context).size.height * 0.05)
          : (MediaQuery.of(context).size.width * 0.03);

  static double ksiToolsBottomPosition = -10;
  static double ksiToolsWidth(context) =>
      MediaQuery.of(context).size.height * 0.1;
  static double ksiToolsheight(context) =>
      MediaQuery.of(context).size.height * 0.5;

  static double ksiLeftPosition = 25;
  static double ksiTopPosition(context) =>
      MediaQuery.of(context).size.height * 0.1;

  static double ksiWidth(context) => MediaQuery.of(context).size.width - 50;
  static double ksiHeight(orientation, context) =>
      orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.4
          : (MediaQuery.of(context).size.height * 0.8);

  static double soundButtonsWidth(context) =>
      (MediaQuery.of(context).size.width - 50) / 9;
  static double soundButtonsHeight(context, orientation) =>
      orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.2
          : (MediaQuery.of(context).size.height * 0.4);

  
}
