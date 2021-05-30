import 'package:sons_para_criancas/models/image_sound_object.dart';

///O ideal é modelar seus dados, no caso os animais do seu exemplo são sua fonte
///de dados, ou seja, eles são um objeto, logo modelamos ele com uma classe dart
///com os parâmetros necessários de modo a facilitar a trabalhar com esses dados
///seja na hora de receber os dados de uma base de dados (no caso aque a base é
///apenas uma lista estática, mas poderia estar vindo de um servidor online).
///Além disso a modelagem permite você isolar tudo referente as responsabilidades
///do objeto somente nesta classe, para facilitar a manutenção, neste exemplo
///temos o método tocarSom, que seria uma função do objeto animal.

class AnimalModel extends ImageSoundObject {
  AnimalModel({
    required String name,
    required String imageAsset,
    required String soundAsset,
  }) : super(
          name: name,
          imageAsset: imageAsset,
          soundAsset: soundAsset,
        );
}
