import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

var cache = AudioCache();
var player = AudioPlayer();

class HomePageAnimais extends StatelessWidget {
  //funcao para tocar o audio

  void tocarSom(String nomeDoSom) async {
    //final player = AudioCache();
    player.stop();
    player = await cache.play(nomeDoSom);

    //player.play(nomeDoSom);
  }

//funcao que cria  botao  que contgem a função que chama o tocador do audio
  animais(String nomeDoAnimal, String nomeDoAudio) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10,
      child: InkWell(
        onTap: () {
          tocarSom(nomeDoAudio);
        },
        child: Container(
          child: Image.asset(
            nomeDoAnimal,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: Text('Animais'),
      ),
      backgroundColor: Colors.limeAccent,
      body: SafeArea(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          crossAxisCount: 2,
          children: <Widget>[
            animais('images/mac.png', 'macaco3.wav'),
            animais('images/galo.png', 'galo2.wav'),
            animais('images/cat3.png', 'gato.mp3'),
            animais('images/horse.png', 'cavalo6.wav'),
            animais('images/coruja.png', 'coruja2.wav'),
            animais('images/dog1.png', 'latido.mp3'),
            Card(
              elevation: 10,
              child: InkWell(
                onTap: () {
                  tocarSom('elefante1.wav');
                },
                child: Image.asset(
                  'images/elefan.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: InkWell(
                onTap: () {
                  tocarSom('porco3.wav');
                },
                child: Image.asset(
                  'images/pig.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
