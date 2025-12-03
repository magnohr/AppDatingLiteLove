import 'package:flutter/material.dart';
import 'package:tre/features/navigationBar/perfil/view_perfil/widgts/cabecalho_perfil.dart';
import 'package:tre/features/navigationBar/perfil/view_perfil/widgts/galeria_usuario.dart';

import '../../navigationBarTela/navigationBarTela.dart';


class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              CabecalhoPerfil(), // Cabeçalho fixo
              SizedBox(height: 16),
              Expanded( // 🔹 só a galeria ocupa o espaço restante e rola
                child: GaleriaUsuario(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
