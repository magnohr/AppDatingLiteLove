import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Telaconta extends StatefulWidget {
  const Telaconta({super.key});

  @override
  State<Telaconta> createState() => _TelacontaState();
}

class _TelacontaState extends State<Telaconta> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Conta',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(height: 20),

          // ======= ITEM 1 =======
          _buildItem(
            iconPath: 'assets/images/perfil_conta.svg',
            title: 'Personal Information',
            subtitle: 'Name, username & Date of birth',
            onTap: () => Navigator.pushReplacementNamed(context, '/editePerfil'),

          ),

          // ======= ITEM 2 =======
          _buildItem(
            iconPath: 'assets/images/pagamentos_conta.svg',
            title: 'Payment & Subscription',
            subtitle: 'Your account payment',
            onTap: () => Navigator.pop(context),
          ),

          // ======= ITEM 3 =======
          _buildItem(
            iconPath: 'assets/images/noti_conta.svg',
            title: 'Notification Setting',
            subtitle: 'My album, moment and notification',
            onTap: () => Navigator.pop(context),
          ),

          // ======= ITEM 4 =======
          _buildItem(
            iconPath: 'assets/images/prefere_conta.svg',
            title: 'Account Preferences',
            subtitle: 'Log in method of your account',
            onTap: () => Navigator.pop(context),
          ),

          const SizedBox(height: 30),

          const Text(
            'APP Configuração',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(height: 20),

          // ======= ITEM 5 =======
          _buildItem(
            iconPath: 'assets/images/perfil_conta.svg',
            title: 'Help Center',
            subtitle: 'Learn how Heact works',
            onTap: () => Navigator.pop(context),
          ),

          // ======= ITEM 6 =======
          _buildItem(
            iconPath: 'assets/images/pagamentos_conta.svg',
            title: 'Terms & Privacy',
            subtitle: 'Review app policies',
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  // 🔹 Função para construir cada linha
  Widget _buildItem({
    required String iconPath,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        InkWell( // 👈 detecta toque em toda a linha
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      iconPath,
                      width: 45,
                      height: 45,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            subtitle,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                'assets/images/seta_conta.svg',
                width: 24,
                height: 24,
              ),
            ],
          ),
        ),
        const SizedBox(height: 22),
        const Divider(color: Colors.grey, thickness: 1),
        const SizedBox(height: 22),
      ],
    );
  }
}
