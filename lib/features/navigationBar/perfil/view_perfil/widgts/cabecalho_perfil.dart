import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tre/core/theme/app_colors.dart';

class CabecalhoPerfil extends StatelessWidget {
  const CabecalhoPerfil({super.key});

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
                  'assets/images/Setting.svg',
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
          backgroundImage: AssetImage('assets/images/perfil_foto.jpg'),
        ),
        const SizedBox(height: 12),
        const Text(
          'Magno Henrique Reis',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text('Brasil, 27'),
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
 ///Método	Função
// push	Abre nova tela (empilha)
// pop	Fecha tela atual
// pushReplacement	Substitui a atual
// pushNamed	Abre tela pelo nome
// pushAndRemoveUntil	Abre e limpa a pilha
// popUntil	Volta até uma rota específica
// Navigator 2.0	Sistema declarativo avançado

/*
⚙️ Resumo rápido
Tipo de Navigator	Ideal para	Dificuldade	Exemplo
push / pop	Apps pequenos	⭐ fácil	Navigator.push(context, ...)
pushNamed / routes:	Apps médios	⭐⭐ médio	Navigator.pushNamed(context, '/perfil')
pushReplacement / pushAndRemoveUntil	Apps médios/grandes	⭐⭐ médio	logout, telas únicas
Navigator 2.0 / go_router	Apps grandes / Web	⭐⭐⭐ avançado	deep links, autenticação
 */