import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageInputBar extends StatelessWidget {
  const MessageInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, -2),
          ),
        ],
      ),

      child: Row(
        children: [
          /// Ícones da esquerda
          SvgPicture.asset(
            "assets/images/cameraMensagens.svg",
            height: 26,
          ),
          const SizedBox(width: 16),

          SvgPicture.asset(
            "assets/images/galeriaMensagens.svg",
            height: 26,
          ),
          const SizedBox(width: 16),

          SvgPicture.asset(
            "assets/images/phoneMensagens.svg",
            height: 26,
          ),

          const SizedBox(width: 12),

          /// TEXTFIELD + ENVIAR
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xffFFECEF), // Rosa clarinho
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                children: [
                  /// TextField
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Mensagem...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  /// Ícone de enviar
                  GestureDetector(
                    onTap: () {
                      // ação de enviar mensagem
                    },
                    child: SvgPicture.asset(
                      "assets/images/enviarMensagens.svg",
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
