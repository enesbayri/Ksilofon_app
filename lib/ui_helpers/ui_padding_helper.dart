
import 'package:flutter/material.dart';
import 'package:flutter_application_16/ui_helpers/ui_widget_sizes.dart';

class UiPaddingHelper {
  static EdgeInsets buttonLinePadding = const EdgeInsets.only(top: 40.0);
  static EdgeInsets firstButtonLeftPadding(orientation,context) =>
      EdgeInsets.only(left: (orientation == Orientation.portrait ? 16+UiWidgetSizes.phoneWidth(context)*0.01 : 32));
  static EdgeInsets otherButtonsLeftPadding(orientation,context) =>
      EdgeInsets.only(left: (orientation == Orientation.portrait ? 8+UiWidgetSizes.phoneWidth(context)*0.005 : 16));
}
