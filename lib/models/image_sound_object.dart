import 'package:audioplayers/audioplayers.dart';

var cache = AudioCache();
var player = AudioPlayer();

///Para ficar melhor organizado e não gerar confusão criei uma classe abstrata
///para ser o pai das outras classes, ao invés de vincular aos animais como
///você fez mudei para essa classe.

abstract class ImageSoundObject {
  String name;
  String imageAsset;
  String soundAsset;
  ImageSoundObject({
    required this.name,
    required this.imageAsset,
    required this.soundAsset,
  });

  void tocarSom() async {
    player.stop();
    player = await cache.play(soundAsset);
  }
}
