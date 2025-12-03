import 'package:flutter/material.dart';

class ConversasChat extends StatelessWidget {
  ConversasChat({super.key});

  // Lista simulada de mensagens
  final List<Map<String, dynamic>> messages = [
    {
      "text":
      "Alcohol based exposures through inadvertently consuming hand sanitizer, have been observed to produc",
      "isMe": false
    },
    {"text": "❤️", "isMe": true},
    {
      "text":
      "The principal alcohol in Purell hand sanitizer (to take the most talked-about brand) is 70% ethanol",
      "isMe": false
    },
    {
      "text":
      "Even factoring differences in body weight between children and adults into account, it would still n",
      "isMe": false
    },
    {"text": "Let’s meet tomorrow !", "isMe": false},
    {"text": "Just 5 min ok ?", "isMe": true},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final msg = messages[index];
        final bool isMe = msg["isMe"];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              // FOTO DO OUTRO USUÁRIO
              if (!isMe)
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage("assets/images/modelo1.jpg"),
                ),

              if (!isMe) const SizedBox(width: 8),

              // BALÃO DE MENSAGEM
              Flexible(
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color:
                    isMe ? Colors.white : const Color(0xffFFECEF), // rosa claro
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(18),
                      topRight: const Radius.circular(18),
                      bottomLeft:
                      isMe ? const Radius.circular(18) : Radius.zero,
                      bottomRight:
                      isMe ? Radius.zero : const Radius.circular(18),
                    ),
                  ),
                  child: Text(
                    msg["text"],
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ),
              ),

              if (isMe) const SizedBox(width: 8),

              // FOTO DO MEU USUÁRIO
              if (isMe)
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage("assets/images/modelo6.jpg"),
                ),
            ],
          ),
        );
      },
    );
  }
}
