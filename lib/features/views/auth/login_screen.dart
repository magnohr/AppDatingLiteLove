import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/app_colors.dart';
import 'contoroller_register/register_controller.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //instancia
  final controller = RegisterController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ------------------------------ Botão Voltar ------------------------------
              InkWell(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  'assets/images/seta_esquerda.svg',
                  width: 30,
                  height: 30,
                ),
              ),

              const SizedBox(height: 20),

              // ------------------------------ Logo ------------------------------
              Center(
                child: SvgPicture.asset(
                  'assets/images/lite_love.svg',
                  width: 300,
                  height: 130,
                ),
              ),

              const SizedBox(height: 30),

              // ------------------------------ Email ------------------------------
              const Text('Email'),
              const SizedBox(height: 8),
              SizedBox(
                width: 355,
                height: 48,
                child: TextField(
                  controller: controller.emailController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 8),
                      child: SvgPicture.asset(
                        'assets/images/email_icon.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    prefixIconConstraints:
                    const BoxConstraints(minWidth: 40, minHeight: 20),
                    labelText: 'Seu email',
                    labelStyle: TextStyle(color: AppColors.grayMedium),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grayMedium),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ------------------------------ Senha ------------------------------
              const Text('Senha'),
              const SizedBox(height: 8),
              SizedBox(
                width: 355,
                height: 48,
                child: TextField(
                  controller: controller.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 8),
                      child: SvgPicture.asset(
                        'assets/images/cadeado_icon.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    prefixIconConstraints:
                    const BoxConstraints(minWidth: 40, minHeight: 20),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset(
                        'assets/images/hide_icon.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: AppColors.grayMedium),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grayMedium),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ------------------------------ Botão Logar ------------------------------
              SizedBox(
                width: 355,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.pinkCoral,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 2,
                  ),
                  onPressed: () {
                    if (controller.isValid()) {
                      print('clicado');
                    } else {
                      print('Preencha todos os campos ');
                    }
                  },
                  child: const Text(
                    'Logar',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // ------------------------------ Esqueci a senha ------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      print('Usuário esqueceu a senha');
                      Navigator.pushNamed(context, '/recover');
                    },
                    child: GestureDetector(
                      onTap: () => Navigator.pushReplacementNamed(context, '/reset'),
                      child: const Text(
                        'Esqueci a senha',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ------------------------------ Linha + "Continue com" ------------------------------
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade400,
                      thickness: 1,
                      endIndent: 10,
                    ),
                  ),
                  const Text(
                    'Continue com',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade400,
                      thickness: 1,
                      indent: 10,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ------------------------------ Ícones de Login Social ------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/face_image.png',
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 25),
                  Image.asset(
                    'assets/images/google_image.png',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // ------------------------------ "Already have an account?" ------------------------------
              Center(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black87, fontSize: 14),
                    children: [
                      TextSpan(text: "Already have an account? "),
                      TextSpan(
                        text: "Log in",
                        style: TextStyle(
                          color: Color(0xFFFF5A79),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ------------------------------ Linha inferior decorativa ------------------------------
              Center(
                child: Container(
                  width: 120,
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
