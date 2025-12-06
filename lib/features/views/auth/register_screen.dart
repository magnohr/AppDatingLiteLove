import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tre/core/theme/app_colors.dart';
import 'package:tre/features/views/auth/sucecessDialog.dart';

import 'contoroller_register/register_controller.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
        child: Builder(
          builder: (context) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // ------------------------------ Botão Voltar ------------------------------
                  InkWell(
                    onTap: () => Navigator.pushReplacementNamed(context, "/login"),
                    child: SvgPicture.asset(
                      'assets/images/seta_esquerda.svg',
                      width: 30,
                      height: 30,
                    ),
                  ),

                  const SizedBox(height: 20),

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
                        fillColor: WidgetStateProperty.all(AppColors.pinkCoral),
                      ),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: controller.isMale,
                              onChanged: (value) {
                                setState(() {
                                  controller.isMale = value!;
                                  if (controller.isMale) controller.isFemale = false;
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
                                  if (controller.isFemale) controller.isMale = false;
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
                          ),
                        ),
                        prefixIconConstraints:
                        const BoxConstraints(minWidth: 40, minHeight: 20),
                        labelText: 'Seu nome',
                        labelStyle: TextStyle(color: AppColors.grayMedium),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

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
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

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
                          ),
                        ),
                        prefixIconConstraints:
                        const BoxConstraints(minWidth: 40, minHeight: 20),
                        labelText: 'Seu email',
                        labelStyle: TextStyle(color: AppColors.grayMedium),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

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
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset(
                            'assets/images/hide_icon.svg',
                            width: 20,
                          ),
                        ),
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: AppColors.grayMedium),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Checkbox(
                        value: controller.isRemember,
                        onChanged: (value) {
                          setState(() => controller.isRemember = value!);
                        },
                      ),
                      const Text('Relembrar Senha'),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // ------------------------------ Registrar ------------------------------
                  SizedBox(
                    width: 355,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.pinkCoral,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () async {
                        // 1️⃣ Validar dados antes de tentar registrar
                        final validationError = controller.validate();

                        if (validationError != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(validationError)),
                          );
                          return; // ❌ Para aqui se houver erro de validação
                        }

                        // 2️⃣ Tentar registrar no Firebase
                        final error = await controller.register();

                        if (error == null) {
                          // 3️⃣ Sucesso → Mostrar popup e ir para login
                          SuccessDialog.show(
                            context,
                            "Sucesso!",
                            "Cadastro realizado com sucesso!",
                            "/login",
                          );
                        } else {
                          // 4️⃣ Erro do Firebase
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error)),
                          );
                        }
                      },

                      child: const Text(
                        'Registrar',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

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
                            color: Colors.black87, fontWeight: FontWeight.w500),
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/face_image.png',
                          width: 40, height: 40),
                      const SizedBox(width: 25),
                      Image.asset('assets/images/google_image.png',
                          width: 40, height: 40),
                    ],
                  ),

                  const SizedBox(height: 24),

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
                              ..onTap = () => Navigator.pushReplacementNamed(
                                  context, '/login'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

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
            );
          }
        ),
      ),
    );
  }
}
