import 'package:flutter/material.dart';
import 'package:sons_para_criancas/models/image_sound_object.dart';

///Esse é um modelo de um widget customizado, ao invés de usar uma função como
///você tinha feito o ideal é criar uma classe de widget, assim ela reutilizável
///e herda outras propriedades da classe widget, nesse caso um stateless widget
///Repare que se esse widget tiver como objetivo somente ser utilizado nessa tela
///você pode mantê-lo neste mesmo arquivo, porém se for reutilizá-lo em outra
///tela de seu app o ideal é que ele seja separado em um arquivo diferente
///normalmente temos uma pasta só de widgets para esses widgets personalizados
///Também vale ressaltar a importância de modelar as classes, aqui seu widget só
///recebe a classe modelo e monta seu conteúdo com base nela
class ImageWithSound extends StatelessWidget {
  final ImageSoundObject object;
  const ImageWithSound({
    Key? key,
    required this.object,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: () {
          object.tocarSom();
        },
        child: Container(
          child: Image.asset(
            object.imageAsset,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
