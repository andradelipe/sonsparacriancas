import 'package:flutter/material.dart';
import 'package:sons_para_criancas/datasource/animals_data.dart';
import 'package:sons_para_criancas/interface/widgets/image_with_sound.dart';

///Esse é um exemplo de código de tela, ele geralmente tem um material widget
///no início, nesse caso o Scaffold que herda o tema do MaterialApp
///Cada tela do seu app o ideal é que seja separado em arquivos diferentes
class AnimalMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animais'),
        centerTitle: true,
      ),
      backgroundColor: Colors.limeAccent,
      body: SafeArea(
        child: GridView.builder(
          primary: false,
          padding: const EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
          ),
          itemCount: animals.length,
          itemBuilder: (context, index) {
            return ImageWithSound(object: animals[index]);
          },
        ),
      ),
    );
  }
}
