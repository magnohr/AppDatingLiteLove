import 'package:flutter/material.dart';
import 'package:tre/features/matches/pagesMathes/cabecalhoMatches.dart';
import 'package:tre/features/matches/pagesMathes/matchesLike.dart';

class Matches extends StatelessWidget {
  const Matches({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Cabecalhomatches(),
            SizedBox(height: 20),
            MatchesGrid(),
          ],
        ),
      ),
    );
  }
}
