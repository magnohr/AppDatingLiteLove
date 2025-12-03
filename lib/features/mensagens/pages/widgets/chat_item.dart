import 'package:flutter/material.dart';

import '../../tela_chat/chat.dart';

class ChatListWidget extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ChatCompleto(),
              ),
            );
          },

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    const SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            names[index],
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "Let’s meet tomorrow !",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        "2 min ago",
                        style: TextStyle(
                          color: Colors.pink.shade600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 1,
                color: Colors.grey.shade300,
                margin: const EdgeInsets.only(left: 16, right: 16),
              ),
            ],
          ),
        );
      },
    );
  }
}
