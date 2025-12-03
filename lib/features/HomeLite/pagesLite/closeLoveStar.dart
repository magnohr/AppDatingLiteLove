import 'package:flutter/material.dart';

class Closelovestar extends StatelessWidget {
  const Closelovestar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: profileCard(
          image: "assets/images/modelo1.jpg",
          name: "Magno Henrique reis",
          age: 23,
          profession: "Professional model",
        ),
      ),
    );
  }

  // ---- FUNÇÃO DO CARD ----
  Widget profileCard({
    required String image,
    required String name,
    required int age,
    required String profession,
  }) {
    return Container(
      width: 330,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 15,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "1 km",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name, $age",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  profession,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
