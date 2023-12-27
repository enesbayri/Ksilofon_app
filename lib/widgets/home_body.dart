
import 'package:flutter/material.dart';
import 'package:flutter_application_16/ui_helpers/ui_urls.dart';
import 'package:flutter_application_16/ui_helpers/ui_widget_sizes.dart';
import 'package:flutter_application_16/widgets/ksi_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: UiWidgetSizes.phoneWidth(context),
      height: UiWidgetSizes.phoneHeight(context),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImagesUrl.bg), fit: BoxFit.fill)),
      child: const KsiWidget(),
    );
  }
}
