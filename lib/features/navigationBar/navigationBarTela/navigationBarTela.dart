import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tre/core/theme/app_colors.dart';
import 'package:tre/features/navigationBar/perfil/view_perfil/tela_perfil.dart';

import '../../HomeLite/datingRondon.dart';
import '../../matches/matches.dart';
import '../../mensagens/pages/mensagens_page.dart';
import '../perfilOutrosUsuarios/outrosUsuarios.dart';

class Navigationbartela extends StatefulWidget {
  const Navigationbartela({super.key});

  @override
  State<Navigationbartela> createState() => _NavigationbartelaState();
}

class _NavigationbartelaState extends State<Navigationbartela> {
  int _selectedIndex = 0;

  final List<Widget> _telas = [
    const DiscoverView(),
    const Matches(),
    const mensagensApp(),
    const TelaPerfil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Expanded(child: _telas[_selectedIndex]),
      bottomNavigationBar: Container(
        width: 375,
        height: 94,
        decoration: BoxDecoration(
          color: AppColors.pinkCoral,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          selectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/coracao_icon_nav.svg',
                width: 30,
                height: 30,
                color: _selectedIndex == 0 ? Colors.white : Colors.white70,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/lupa_icon_nav.svg',
                width: 30,
                height: 30,
                color: _selectedIndex == 1 ? Colors.white : Colors.white70,
              ),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/mensagem_icon_nav.svg',
                width: 30,
                height: 30,
                color: _selectedIndex == 2 ? Colors.white : Colors.white70,
              ),
              label: 'Mensagens',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/perfil_icon_nav.svg',
                width: 30,
                height: 30,
                color: _selectedIndex == 3 ? Colors.white : Colors.white70,
              ),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }
}
