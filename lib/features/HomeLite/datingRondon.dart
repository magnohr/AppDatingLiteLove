import 'package:flutter/material.dart';
import 'package:tre/features/HomeLite/pagesLite/cabecalhoLite.dart';
import 'package:tre/features/HomeLite/pagesLite/closeLoveStar.dart';
import 'package:tre/features/HomeLite/pagesLite/discover/discover.dart';

import '../mensagens/pages/widgets/app_bar.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
        
            SizedBox(
              height: 60,
              child: discoverHeader(context),   // SUA CLASSE
            ),
        
            const SizedBox(height: 10),
        
            SizedBox(
              height: 110,
              child: Closelovestar(),    // SUA CLASSE
            ),
        
            const SizedBox(height: 10),
        
            Expanded(
              child: DiscoverSwipeExample(), // OU TinderSwipeCards()
            ),
          ],
        ),
      ),
    );
  }
}
