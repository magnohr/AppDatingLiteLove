import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatHeader extends StatefulWidget {
  const ChatHeader({super.key});

  @override
  State<ChatHeader> createState() => _ChatHeaderState();
}

class _ChatHeaderState extends State<ChatHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              'assets/images/seta_esquerda.svg',
              width: 24,
              height: 24,
            ),
          ),

          // TEXTO FIXO
          const Text(
            'NOME',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),

          Row(
            children: [
              SvgPicture.asset(
                'assets/images/call.svg',
                width: 24,
                height: 24,
              ),
              SizedBox(width: 16),
              SvgPicture.asset(
                'assets/images/camera_chat.svg',
                width: 24,
                height: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
