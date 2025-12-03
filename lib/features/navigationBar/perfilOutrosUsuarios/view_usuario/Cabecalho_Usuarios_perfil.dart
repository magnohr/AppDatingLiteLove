import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tre/core/theme/app_colors.dart';

class CabecalhoUsuariosPerfil extends StatelessWidget {
  const CabecalhoUsuariosPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  'assets/images/seta_esquerda.svg',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            const Text(
              'Perfil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/telainteiraconfig');

                },
                child: SvgPicture.asset(
                  'assets/images/block.svg',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),

        // 🔹 Info do usuário
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/rosto_feminino_usu.jpg'),
        ),
        const SizedBox(height: 12),
        const Text(
          'Jeniffer danuzi',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text('Inglaterra, 28'),
        const SizedBox(height: 20),


        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sobre mim!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const Text(
              'Hi! I’m Eleanor Pena, a fun loving adventurer. '
                  'It is a long established fact that a reader will be distracted '
                  'by the readable content of a page when looking at its layout.',

            ),
            const SizedBox(height: 20),
          ],
        ),



        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Galeria',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text(
              'Add Image',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.pinkCoral,
              ),
            ),
          ],
        )
      ],


    );


  }
}