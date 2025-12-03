import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tre/features/telaConfiguracao/viewsPage/TelaConfiguracao/avatarNomeEmail.dart';
import 'package:tre/features/telaConfiguracao/viewsPage/TelaConfiguracao/telaConta.dart';

class TelaCabecalho extends StatefulWidget {
  const TelaCabecalho({super.key});

  @override
  State<TelaCabecalho> createState() => _TelaCabecalhoState();
}

class _TelaCabecalhoState extends State<TelaCabecalho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  // Seta à esquerda
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

                  // Texto centralizado
                  Align(
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

            // Widgets da tela
            AvatarnomeEmail(),
            Telaconta(),
          ],
        ),
      ),
    );
  }
}
