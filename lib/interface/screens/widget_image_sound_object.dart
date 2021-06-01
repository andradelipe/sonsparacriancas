import 'package:flutter/material.dart';
import 'package:sons_para_criancas/models/fruta_model.dart';

class AnimalCard extends StatelessWidget {
  final FrutaModel fruta;
  const AnimalCard({
    Key? key,
    required this.fruta,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: () {
          fruta.tocarSom();
        },
        child: Container(
          child: Image.asset(
            fruta.imageAsset,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
