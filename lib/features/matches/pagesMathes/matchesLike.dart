import 'package:flutter/material.dart';
import 'package:tre/core/theme/app_colors.dart';
import 'dart:ui';


class MatchesGrid extends StatelessWidget {
  final List<String> images = [
    "assets/images/modelo1.jpg",
    "assets/images/modelo2.jpg",
    "assets/images/modelo3.jpg",
    "assets/images/modelo4.jpg",
    "assets/images/modelo5.jpg",
    "assets/images/modelo6.jpg",
    "assets/images/modelo7.jpg",
    "assets/images/modelo8.jpg",
    "assets/images/modelo9.jpg",
    "assets/images/modelo10.jpg"
  ];

  final List<String> names = [
    "Magno",
    "Julie",
    "Darrell",
    "Tanya",
    "Kristin",
    "Sophia",
    "Miguel",
    "Lucas",
    "Ariana",
    "Brian",
  ];

  MatchesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          children: [
            Expanded(
              child: Divider(
                color: Colors.pink,
                thickness: 1,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "LIKES",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ),

            Expanded(
              child: Divider(
                color: Colors.pink,
                thickness: 1,
              ),
            ),
          ],
        ),


        SizedBox(height: 15),

        // ★ GRID DE MATCHES ★
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,               // 2 por linha
            mainAxisSpacing: 15,             // espaçamento vertical
            crossAxisSpacing: 15,            // espaçamento horizontal
            childAspectRatio: 140 / 200,     // W = 140, H = 200
          ),
          itemBuilder: (context, index) {
            return Container(
              width: 140,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Column(
                children: [

                  // FOTO COM ÍCONES NO TOPO
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(
                          images[index],
                          width: 140,
                          height: 160,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // ÍCONES EM CIMA

                    ],
                  ),

                  // PARTE INFERIOR — FUNDO ROSA COM BLUR
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
                    child: Stack(
                      children: [
                        // BLUR
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                          child: Container(
                            width: 140,
                            height: 40,
                            color: AppColors.pinkLight.withOpacity(0.45), // Rosa translúcido
                          ),
                        ),

                        // ÍCONES
                        Container(
                          width: 140,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.close, color: Colors.white, size: 26),
                              Icon(Icons.chat_bubble_outline, color: Colors.white, size: 22),
                              Icon(Icons.favorite, color: Colors.white, size: 26),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
