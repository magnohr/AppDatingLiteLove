import 'package:flutter/material.dart';
import 'package:tre/features/mensagens/tela_chat/pages_chat/widgtes/cabecalho_chat.dart';
import 'package:tre/features/mensagens/tela_chat/pages_chat/widgtes/conversas_chat.dart';
import 'package:tre/features/mensagens/tela_chat/pages_chat/widgtes/enviar_mensagens.dart';


class ChatCompleto extends StatelessWidget {
  const ChatCompleto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF6F7), // fundo rosa claro

      body: SafeArea(
        child: Column(
          children: [
            /// 🔝 CABEÇALHO
            const ChatHeader(),

            /// 🥰 LISTA DE MENSAGENS
            Expanded(
              child: ConversasChat(),
            ),

            /// ✏️ BARRA DE DIGITAR
            const MessageInputBar(),
          ],
        ),
      ),
    );
  }
}
