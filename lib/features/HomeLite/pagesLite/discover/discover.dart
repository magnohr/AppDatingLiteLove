import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tre/features/HomeLite/pagesLite/discover/profile_card.dart';
import '../arrastarLite/arrastarLite.dart';



import '../closeLoveStar.dart';

class DiscoverSwipeExample extends StatelessWidget {
  DiscoverSwipeExample({Key? key}) : super(key: key);

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
    "assets/images/modelo10.jpg",
  ];

  final List<String> names = [
    "My Story",
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

  final List<String> professions = [
    "Model",
    "Designer",
    "Developer",
    "Photographer",
    "Student",
    "Engineer",
    "Artist",
    "Dancer",
    "Musician",
    "Lawyer",
  ];

  @override
  Widget build(BuildContext context) {
    final random = Random();

    /// cria uma lista de cards finais
    List<Widget> cards = List.generate(
      images.length,
          (i) => profileCard(
        image: images[i],
        name: names[i % names.length],
        age: 18 + random.nextInt(15),
        profession: professions[random.nextInt(professions.length)],
      ),
    );

    return Scaffold(
      body: Center(
        child: TinderSwipeCards(
          cards: cards,
          onLike: () => print("Curtir ❤️"),
          onDislike: () => print("Não Gostei ❌"),
        ),
      ),
    );
  }
}
