import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sons_para_criancas/interface/screens/frutas_main_screen.dart';

import 'animals_main_screen.dart';
import 'cores_main_screen.dart';

///Esse é um exemplo de código de tela, ele geralmente tem um material widget
///no início, nesse caso o Scaffold que herda o tema do MaterialApp
///Cada tela do seu app o ideal é que seja separado em arquivos diferentes
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffdfb6), // 0xffb6ffdf
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 200,
                    width: double.maxFinite,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 10,
                      child: InkWell(
                          child: Image.asset(
                            'images/fa.jpeg',
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => AnimalMainScreen()),
                            );
                          }),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 200,
                    width: double.maxFinite,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 10,
                      child: InkWell(
                          child: Image.asset(
                            'images/ff.jpeg',
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => FrutaMainScreen()),
                            );
                          }),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 200,
                    width: double.maxFinite,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 10,
                      child: InkWell(
                          child: Image.asset(
                            'images/fc.jpeg',
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => CorMainScreen()),
                            );
                          }),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 200,
                    width: double.maxFinite,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 10,
                      child: InkWell(
                          child: Image.asset(
                            'images/fn.jpeg',
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed('/animais');
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
