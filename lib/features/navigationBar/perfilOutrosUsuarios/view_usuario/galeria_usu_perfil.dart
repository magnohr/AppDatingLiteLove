import 'package:flutter/material.dart';

class GaleriaUsuPerfil extends StatelessWidget {
  const GaleriaUsuPerfil({super.key});

  final List<String> imagens = const [

    'assets/images/paisagem1.jpg',
    'assets/images/paisagem2.jpg',
    'assets/images/paisagem3.jpg',
    'assets/images/paisagem4.jpg',
    'assets/images/paisagem5.jpg',
    'assets/images/paisagem1.jpg',
    'assets/images/paisagem2.jpg',
    'assets/images/paisagem3.jpg',
    'assets/images/paisagem4.jpg',
    'assets/images/paisagem5.jpg',
    'assets/images/paisagem1.jpg',
    'assets/images/paisagem2.jpg',
    'assets/images/paisagem3.jpg',
    'assets/images/paisagem4.jpg',
    'assets/images/paisagem5.jpg',


    /*
    'assets/images/iiiiii.jpg',
    'assets/images/mitico.jpg',
    'assets/images/ttt.jpg',
    'assets/images/uuoo.jpg',
    'assets/images/n.jpg',
    'assets/images/besta.jpg',
    'assets/images/dddddd.jpg',
    'assets/images/fir.jpg',
    'assets/images/fire.jpg',
    'assets/images/fo.jpg',
    'assets/images/iiiiii.jpg',
    'assets/images/mitico.jpg',
    'assets/images/ttt.jpg',
    'assets/images/uuoo.jpg',

     */

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: imagens.map((img) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
    );
  }
}
