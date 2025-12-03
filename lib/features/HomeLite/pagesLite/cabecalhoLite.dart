import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

Widget discoverHeader() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // BOTÃO VOLTAR (SVG)
        GestureDetector(
          onTap: () {
            print("Voltar clicado!");
          },
          child: SvgPicture.asset(
            'assets/images/seta_esquerda.svg',
            width: 30,
            height: 30,
          ),
        ),

        // TÍTULO CENTRAL
        const Text(
          "Discover",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        // BOTÃO DE FILTRO (com Random só pra demonstrar ação)
        GestureDetector(
          onTap: () {
            int numero = Random().nextInt(50);
            print("Filtro clicado! Número aleatório: $numero");
          },
          child: const Icon(
            Icons.filter_list,
            size: 30,
          ),
        ),
      ],
    ),
  );
}
