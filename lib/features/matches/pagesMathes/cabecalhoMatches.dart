import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Cabecalhomatches extends StatelessWidget {
  const Cabecalhomatches({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Matches",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Botão de filtro
              IconButton(
                onPressed: () {
                  // ação do filtro
                },
                icon: SvgPicture.asset(
                  "assets/images/inactive.svg",
                  width: 52,
                  height: 52,
                ),
              ),

            ],
          ),
        ),

        // Subtítulo
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Lista de seus matches que vocês combinaram",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
