import 'package:flutter/material.dart';
import 'package:flutter_application_16/ui_helpers/ui_widget_sizes.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class AnimationPosition{
   static double ksiAnimationXPosition(String sound,BuildContext context,Orientation orientation) {
    double getPosition = 0;
    if (sound == "a") {
      getPosition = orientation==Orientation.portrait ? (UiWidgetSizes.soundButtonsWidth(context)*-3.6) : (UiWidgetSizes.soundButtonsWidth(context)*-7.6);
    } else if (sound == "b") {
      getPosition = orientation==Orientation.portrait ? UiWidgetSizes.soundButtonsWidth(context)*-2.5 : (UiWidgetSizes.soundButtonsWidth(context)*-6.5);
    } else if (sound == "c") {
      getPosition = orientation==Orientation.portrait ? UiWidgetSizes.soundButtonsWidth(context)*-1.4 : (UiWidgetSizes.soundButtonsWidth(context)*-5.4);
    } else if (sound == "d") {
      getPosition = orientation==Orientation.portrait ? 0 : (UiWidgetSizes.soundButtonsWidth(context)*-4.3);
    } else if (sound == "e") {
      getPosition = orientation==Orientation.portrait ? UiWidgetSizes.soundButtonsWidth(context)*1.2 : (UiWidgetSizes.soundButtonsWidth(context)*-3.1);
    } else if (sound == "f") {
      getPosition = orientation==Orientation.portrait ? UiWidgetSizes.soundButtonsWidth(context)*2.2 : (UiWidgetSizes.soundButtonsWidth(context)*-1.9);
    } else if (sound == "g") {
      getPosition = orientation==Orientation.portrait ? UiWidgetSizes.soundButtonsWidth(context)*3.3 : (UiWidgetSizes.soundButtonsWidth(context)*-0.8);
    }
    return getPosition;
  }

  static double ksiAnimationYPosition(context,orientation)=>(UiWidgetSizes.phoneHeight(context)-(UiWidgetSizes.ksiTopPosition(context)+(UiWidgetSizes.ksiHeight(orientation, context)/2.5+UiWidgetSizes.ksiToolsheight(context)*0.7+UiWidgetSizes.ksiToolsBottomPosition)))*-1;

  static SequenceAnimation playAnimate(
      String sound,
      BuildContext context,
      SequenceAnimation sequenceAnimation,
      AnimationController controller,
      Orientation orientation){
    sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
            animatable: Tween<double>(begin: 0, end: ksiAnimationYPosition(context,orientation)),
            from: Duration.zero,
            to: const Duration(milliseconds: 400),
            tag: "yPosition")
        .addAnimatable(
            animatable: Tween<double>(begin: 0, end: ksiAnimationXPosition(sound,context,orientation)),
            from: Duration.zero,
            to: const Duration(milliseconds: 400),
            tag: "xPosition")
        .addAnimatable(animatable: Tween<double>(begin: 1,end:0.5), from:  const Duration(milliseconds: 200), to: const Duration(milliseconds: 400), tag: "scale")    
        .animate(controller);
    return sequenceAnimation;
  
  }
}

