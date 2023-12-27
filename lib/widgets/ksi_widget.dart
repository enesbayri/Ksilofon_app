
import 'package:flutter/material.dart';
import 'package:flutter_application_16/data_operations/play_sound.dart';
import 'package:flutter_application_16/ui_helpers/animation_helper.dart';
import 'package:flutter_application_16/ui_helpers/ui_padding_helper.dart';
import 'package:flutter_application_16/ui_helpers/ui_urls.dart';
import 'package:flutter_application_16/ui_helpers/ui_widget_sizes.dart';
import 'package:flutter_application_16/widgets/sound_button.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class KsiWidget extends StatefulWidget {
  const KsiWidget({super.key});

  @override
  State<KsiWidget> createState() => _KsiWidgetState();
}

class _KsiWidgetState extends State<KsiWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late SequenceAnimation sequenceAnimation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
    sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
            animatable: Tween<double>(begin: 0, end: 0),
            from: Duration.zero,
            to: const Duration(milliseconds: 500),
            tag: "yPosition")
        .addAnimatable(
            animatable: Tween<double>(begin: 0, end: 0),
            from: Duration.zero,
            to: const Duration(milliseconds: 500),
            tag: "xPosition")
        .addAnimatable(animatable: Tween<double>(begin: 1,end:0.5), from: const Duration(milliseconds: 200), to: const Duration(milliseconds: 400), tag: "scale")    
        .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Stack(children: [
        Positioned(
          left: UiWidgetSizes.ksiLeftPosition,
          top: UiWidgetSizes.ksiTopPosition(context),
          child: Container(
            width: UiWidgetSizes.ksiWidth(context),
            height: UiWidgetSizes.ksiHeight(orientation, context),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(ImagesUrl.ksiImage),
              fit: BoxFit.fill,
            )),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: UiPaddingHelper.buttonLinePadding,
                child: Row(children: [
                  SoundButton(
                    orientation: orientation,
                    padding:
                        UiPaddingHelper.firstButtonLeftPadding(orientation,context),
                    onTap: () async{onTap("a", orientation);},
                  ),
                  SoundButton(
                    orientation: orientation,
                    padding:
                        UiPaddingHelper.otherButtonsLeftPadding(orientation,context),
                    onTap:() async{onTap("b", orientation);}
                  ),
                  SoundButton(
                    orientation: orientation,
                    padding:
                        UiPaddingHelper.otherButtonsLeftPadding(orientation,context),
                    onTap: () async{onTap("c", orientation);}
                  ),
                  SoundButton(
                    orientation: orientation,
                    padding:
                        UiPaddingHelper.otherButtonsLeftPadding(orientation,context),
                    onTap: () async{onTap("d", orientation);}
                  ),
                  SoundButton(
                    orientation: orientation,
                    padding:
                        UiPaddingHelper.otherButtonsLeftPadding(orientation,context),
                    onTap: () async{onTap("e", orientation);}
                  ),
                  SoundButton(
                    orientation: orientation,
                    padding:
                        UiPaddingHelper.otherButtonsLeftPadding(orientation,context),
                    onTap: () async{onTap("f", orientation);}
                  ),
                  SoundButton(
                    orientation: orientation,
                    padding:
                        UiPaddingHelper.otherButtonsLeftPadding(orientation,context),
                    onTap: () async{onTap("g", orientation);}
                  ),
                ]),
              ),
            ),
          ),
        ),
        AnimatedBuilder(
          animation: controller,
          builder: (context, child) => Positioned(
            right: UiWidgetSizes.ksiToolsRightPosition(orientation, context),
            bottom: UiWidgetSizes.ksiToolsBottomPosition,
            child: Transform.translate(
              offset: Offset(sequenceAnimation["xPosition"].value,
                  sequenceAnimation["yPosition"].value),
              child: Transform.scale(
                scaleY: sequenceAnimation["scale"].value,
                child: SizedBox(
                  width: UiWidgetSizes.ksiToolsWidth(context),
                  height: UiWidgetSizes.ksiToolsheight(context),
                  child: Image.asset(
                    ImagesUrl.ksiTools,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }

  void onTap(String sound,Orientation orientation) async{
                      PlaySound.play(sound);
                      sequenceAnimation= AnimationPosition.playAnimate(sound, context, sequenceAnimation, controller,orientation);
                      await controller.forward();
                      controller.reverse();
                    }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}

