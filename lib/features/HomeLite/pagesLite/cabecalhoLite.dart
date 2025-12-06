import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget discoverHeader(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // BOTÃO VOLTAR (SVG)
        GestureDetector(
          onTap: () async {
            final confirm = await showDialog<bool>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Deslogar"),
                  content: const Text("Tem certeza que deseja sair da conta?"),
                  actions: [
                    TextButton(
                      child: const Text("Cancelar"),
                      onPressed: () => Navigator.pop(context, false),
                    ),
                    TextButton(
                      child: const Text(
                        "Sim, sair",
                        style: TextStyle(color: Colors.red),
                      ),
                      onPressed: () => Navigator.pop(context, true),
                    ),
                  ],
                );
              },
            );

            // Se o usuário cancelar, não faz nada
            if (confirm != true) return;

            // Desloga
            final prefs = await SharedPreferences.getInstance();
            await prefs.setBool('remember', false);

            // Vai para login
            Navigator.pushReplacementNamed(context, '/login');
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
