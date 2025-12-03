import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tre/features/telaConfiguracao/viewsPage/TelaConfiguracao/telaConta.dart';

import 'avatarNomeEmail.dart';

class Telainteiraconfig extends StatefulWidget {
  const Telainteiraconfig({super.key});

  @override
  State<Telainteiraconfig> createState() => _TelainteiraconfigState();
}

class _TelainteiraconfigState extends State<Telainteiraconfig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ✅ Só um scroll view geral
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ======= CABEÇALHO =======
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: SvgPicture.asset(
                          'assets/images/seta_esquerda.svg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Configuração',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ======= CONTEÚDO =======
              const AvatarnomeEmail(),
              const Telaconta(),
            ],
          ),
        ),
      ),
    );
  }
}
