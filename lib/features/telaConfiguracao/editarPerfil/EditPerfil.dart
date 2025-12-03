import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Editperfil extends StatefulWidget {
  const Editperfil({super.key});

  @override
  State<Editperfil> createState() => _EditperfilState();
}

class _EditperfilState extends State<Editperfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cabeçalho com seta e título centralizado
              Stack(
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

              const SizedBox(height: 26), // 👈 espaçamento entre o título e o círculo

              // Foto de perfil
              Center(

                child: Container(
                  padding: const EdgeInsets.all(5), // Espaço entre imagem e borda
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.pinkAccent, // cor da borda
                      width: 6, // 👈 espessura da borda
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/perfil_foto.jpg'),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Center(
                child: Text('Edit profile photo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.pinkAccent
                ),
                ),
              ),
              const SizedBox(height: 17),
              Text('Name',

                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
              ),
              TextField(


              ),
              const SizedBox(height: 17),
              Text('Date of brith',

                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
              ),
              TextField(


              ),
              const SizedBox(height: 17),
              Text('Location',

                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
              ),
              TextField(


              ),
              const SizedBox(height: 83),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Linha cinza de cima
                  Container(
                    height: 1,
                    color: Colors.black,
                  ),

                  const SizedBox(height: 15),

                  // Texto "Upgrade to premium plan"
                  Text(
                    'Upgrade to premium plan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.pinkAccent,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Linha cinza do meio
                  Container(
                    height: 1,
                    color: Colors.black,
                  ),

                  const SizedBox(height: 15),

                  // Texto "Delete account"
                  Text(
                    'Delete account',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.pinkAccent, // destaque em vermelho
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Linha cinza de baixo
                  Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
