import 'package:flutter/material.dart';
import 'package:sons_para_criancas/datasource/cores_data.dart';
import 'package:sons_para_criancas/models/cor_model.dart';

///Esse é um exemplo de código de tela, ele geralmente tem um material widget
///no início, nesse caso o Scaffold que herda o tema do MaterialApp
///Cada tela do seu app o ideal é que seja separado em arquivos diferentes
class CorMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFdfb6ff),
        title: Text('Cores'),
      ),
      backgroundColor: Color(0xffffdfb6),
      body: SafeArea(
        child: GridView.builder(
          primary: false,
          padding: const EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
          ),
          itemCount: cores.length,
          itemBuilder: (context, index) {
            return AnimalCard(cor: cores[index]);
          },
        ),
      ),
    );
  }
}

///Esse é um modelo de um widget customizado, ao invés de usar uma função como
///você tinha feito o ideal é criar uma classe de widget, assim ela reutilizável
///e herda outras propriedades da classe widget, nesse caso um stateless widget
///Repare que se esse widget tiver como objetivo somente ser utilizado nessa tela
///você pode mantê-lo neste mesmo arquivo, porém se for reutilizá-lo em outra
///tela de seu app o ideal é que ele seja separado em um arquivo diferente
///normalmente temos uma pasta só de widgets para esses widgets personalizados
///Também vale ressaltar a importância de modelar as classes, aqui seu widget só
///recebe a classe modelo e monta seu conteúdo com base nela
class AnimalCard extends StatelessWidget {
  final CorModel cor;
  const AnimalCard({
    Key? key,
    required this.cor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: () {
          cor.tocarSom();
        },
        child: Container(
          child: Image.asset(
            cor.imageAsset,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
