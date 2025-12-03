import 'package:flutter/material.dart';

// Este widget mostra os "stories" no estilo Instagram
class StoriesWidget extends StatelessWidget {

  // Lista de imagens dos stories (assets)
  final List<String> images = [
    "assets/images/modelo1.jpg",  // primeira imagem (seu próprio story)
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

  // Lista de nomes que aparecem embaixo de cada story
  final List<String> names = [
    "My Story", // primeiro sempre é o usuário
    "Julie",
    "Darrell",
    "Tanya",
    "Kristin",
    "Sophia",
    "Miguel",
    "Lucas",
    "Ariana",
    "Brian",
    "Camila",
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          final isFirst = index == 0;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.pinkAccent,
                          width: 3,
                        ),
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    if (isFirst)
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                  ],
                ),

                const SizedBox(height: 6),

                Text(
                  names[index],
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

