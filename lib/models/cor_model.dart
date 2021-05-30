import 'package:sons_para_criancas/models/image_sound_object.dart';

class Cor extends ImageSoundObject {
  Cor({
    required String name,
    required String imageAsset,
    required String soundAsset,
  }) : super(
          name: name,
          imageAsset: imageAsset,
          soundAsset: soundAsset,
        );
}
