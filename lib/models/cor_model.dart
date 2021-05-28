import 'package:sons_para_criancas/models/animal_model.dart';

class Cor extends AnimalModel {
  Cor(
      {required String name,
      required String imageAsset,
      required String soundAsset})
      : super(name: name, imageAsset: imageAsset, soundAsset: soundAsset);
}
