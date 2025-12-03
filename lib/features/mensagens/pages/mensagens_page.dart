import 'package:flutter/material.dart';
import 'package:tre/features/mensagens/pages/widgets/app_bar.dart';
import 'package:tre/features/mensagens/pages/widgets/barra_pesquisa.dart';
import 'package:tre/features/mensagens/pages/widgets/chat_item.dart';
import 'package:tre/features/mensagens/pages/widgets/lista_histories.dart';

class mensagensApp extends StatelessWidget {
  const mensagensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: App_Bar(),
      ),

      drawer: const Drawer(),

      body: Column(
        children: [
          const SizedBox(height: 10),

          SizedBox(
            height: 60,
            child: BarraPesquisa(),
          ),

          const SizedBox(height: 10),

          SizedBox(
            height: 110,
            child: StoriesWidget(),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ChatListWidget(),
          ),
        ],
      ),
    );
  }
}
