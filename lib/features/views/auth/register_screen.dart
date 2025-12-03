import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tre/core/theme/app_colors.dart';
import 'package:tre/features/views/auth/sucecessDialog.dart';

import 'contoroller_register/register_controller.dart';


// ------------------------ Tela de Registro ----------------------------
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

// ------------------------ Estado da Tela ----------------------------
class _RegisterScreenState extends State<RegisterScreen> {
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

              // ------------------------------ Gênero ------------------------------
              Theme(
                data: Theme.of(context).copyWith(
                  checkboxTheme: CheckboxThemeData(
                    fillColor: WidgetStateProperty.all(AppColors.grayMedium),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: controller.isMale,
                          onChanged: (value) {
                            setState(() {
                              controller.isMale = value!;
                              if (controller.isMale) {
                                controller.isFemale = false;
                              }
                            });
                          },
                        ),
                        const Text('Masculino'),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Row(
                      children: [
                        Checkbox(
                          value: controller.isFemale,
                          onChanged: (value) {
                            setState(() {
                              controller.isFemale = value!;
                              if (controller.isFemale) {
                                controller.isMale = false;
                              }
                            });
                          },
                        ),
                        const Text('Feminino'),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ------------------------------ Campo Nome ------------------------------
              const Text('Nome'),
              const SizedBox(height: 8),
              SizedBox(
                width: 355,
                height: 48,
                child: TextField(
                  controller: controller.nameController,
                  decoration: InputDecoration(

                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 8),
                      child: SvgPicture.asset(
                        'assets/images/perfil_circle.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    prefixIconConstraints:
                    const BoxConstraints(minWidth: 40, minHeight: 20),
                    labelText: 'Seu nome',
                    labelStyle: TextStyle(color: AppColors.grayMedium),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grayMedium),
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

              // ------------------------------ Data de Nascimento ------------------------------
              const Text('Data de Nascimento'),
              const SizedBox(height: 8),
              SizedBox(
                width: 355,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller.dayController,
                        decoration: InputDecoration(
                          hintText: 'Dia',
                          border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.grayMedium),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: controller.monthController,
                        decoration: InputDecoration(
                          hintText: 'Mês',
                          border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.grayMedium),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: controller.yearController,
                        decoration: InputDecoration(
                          hintText: 'Ano',
                          border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: AppColors.grayMedium),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

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

              // ------------------------------ Relembrar Senha ------------------------------
              Theme(
                data: Theme.of(context).copyWith(
                  checkboxTheme: CheckboxThemeData(
                    fillColor: WidgetStateProperty.all(AppColors.grayMedium),
                  ),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: controller.isRemember,
                      onChanged: (value) {
                        setState(() {
                          controller.isRemember = value!;
                        });
                      },
                    ),
                    const Text('Relembrar Senha')
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // ------------------------------ Botão Registrar ------------------------------
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
                  //-----------------------
                  onPressed: () {
                    if (controller.isValid()) {
                      SuccessDialog.show(
                        context,
                        'Registrado com Sucesso',
                        'Your account has been created successfully!',
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Preencha todos os campos corretamente!'),
                          backgroundColor: Colors.redAccent,
                        ),
                      );
                    }
                  },
                //===========================
                  child: const Text(
                    'Registrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
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
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black87, fontSize: 14),
                    children: [
                      const TextSpan(text: "Already have an account? "),
                      TextSpan(
                        text: "Log in",
                        style: const TextStyle(
                          color: Color(0xFFFF5A79),
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
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
