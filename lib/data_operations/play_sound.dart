
import 'package:audioplayers/audioplayers.dart';

class PlaySound {
  static void play(sound) {
    final player = AudioPlayer();
    player.play(AssetSource("sounds/$sound.wav"));
  }

 
}

