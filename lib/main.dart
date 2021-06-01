import 'package:flutter/material.dart';
import 'package:sons_para_criancas/interface/screens/animals_main_screen.dart';
import 'package:sons_para_criancas/interface/screens/cores_main_screen.dart';
import 'package:sons_para_criancas/interface/screens/frutas_main_screen.dart';

import 'interface/screens/home_main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Normalmente deixamos esse arquivo somente com funções gerais do run e o MaterialApp
    ///Usando somente para configurar o material com os temas e localizações
    ///desacoplando os códigos de telas
    return MaterialApp(
      //color: Color(0xDFB6FF),
      theme: ThemeData(
        primarySwatch: Colors.pink,
        //É aqui que você configura a cor princial
        //Aqui também podem ser configurado outros temas como dos botões e textos
      ),

      //home: Home(), Rota

      ///As rotas caso sejam poucas aconselho a manter no próprio main, caso o
      ///app seja maior pode criar uma arquivo que contenha um map <String, (context)=>widget>,
      ///e chamá-lo aqui, uma boa opção também é ao invés de usar uma string criar
      ///uma const de String para cada nome de rota

      //AnimalMainScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/animais': (context) => AnimalMainScreen(),
        '/frutas': (context) => FrutaMainScreen(),
        '/cores': (context) => CorMainScreen(),
      },
    );
  }
}
