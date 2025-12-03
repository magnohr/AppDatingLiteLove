import 'package:flutter/material.dart';
import 'package:tre/features/navigationBar/perfil/view_perfil/widgts/cabecalho_perfil.dart';
import 'package:tre/features/navigationBar/perfil/view_perfil/widgts/galeria_usuario.dart';
import 'package:tre/features/navigationBar/perfilOutrosUsuarios/view_usuario/Cabecalho_Usuarios_perfil.dart';
import 'package:tre/features/navigationBar/perfilOutrosUsuarios/view_usuario/galeria_usu_perfil.dart';

class Outrosusuarios extends StatefulWidget {
  const Outrosusuarios({super.key});

  @override
  State<Outrosusuarios> createState() => _Outrosusuarios();
}

class _Outrosusuarios extends State<Outrosusuarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CabecalhoUsuariosPerfil(),
              const SizedBox(height: 16),
              const Expanded(
                child: GaleriaUsuPerfil(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
