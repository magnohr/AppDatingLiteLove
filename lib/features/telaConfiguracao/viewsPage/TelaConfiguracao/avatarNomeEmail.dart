import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tre/features/telaConfiguracao/viewsPage/TelaConfiguracao/telaConta.dart';

class AvatarnomeEmail extends StatefulWidget {
  const AvatarnomeEmail({super.key});

  @override
  State<AvatarnomeEmail> createState() => _AvatarnomeEmailState();
}

class _AvatarnomeEmailState extends State<AvatarnomeEmail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius:25,
            backgroundImage: const AssetImage('assets/images/perfil_foto.jpg',
            ),
          ),
          SizedBox(width: 14.2),
          Column(
            children: [
              Text(
                'Magno Henrique',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 3),
              Text(
                'magno@email.com',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],

      ),

    );

  }

}
