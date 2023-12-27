import 'package:flutter/material.dart';
import 'package:flutter_application_16/ui_helpers/ui_widget_sizes.dart';

class SoundButton extends StatelessWidget {
  final VoidCallback onTap;
  final Orientation orientation;
  final EdgeInsets padding;
  const SoundButton({
    Key? key,
    required this.orientation,
    required this.padding,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: padding,
        child: InkWell(
          onTap: () {
            onTap();
          },
          child: SizedBox(
            width: UiWidgetSizes.soundButtonsWidth(context),
            height: UiWidgetSizes.soundButtonsHeight(context, orientation),
          ),
        ),
      ),
    );
  }
}
