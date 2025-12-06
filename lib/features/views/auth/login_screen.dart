import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tre/core/theme/app_colors.dart';
import 'contoroller_register/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = LoginController();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await controller.loadSavedData();
      setState(() {});
    });
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
                onTap: () => Navigator.pushNamed(context, "/register"),
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
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 40,
                      minHeight: 20,
                    ),
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
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 40,
                      minHeight: 20,
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

              // ------------------------------ Lembrar login ------------------------------

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
                  onPressed: () async {
                    if (!controller.isValid()) {
                      print("Preencha todos os campos");
                      return;
                    }

                    final error = await controller.login();

                    if (error == null) {
                      Navigator.pushReplacementNamed(
                          context, '/NavigationBar');
                    } else {
                      print(error);
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
                    onPressed: () =>
                        Navigator.pushNamed(context, '/reset'),
                    child: const Text(
                      'Esqueci a senha',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ------------------------------ Divisor ------------------------------
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade400,
                      thickness: 1,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Continue com'),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade400,
                      thickness: 1,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ------------------------------ Social login ------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/face_image.png', width: 40),
                  const SizedBox(width: 25),
                  Image.asset('assets/images/google_image.png', width: 40),
                ],
              ),

              const SizedBox(height: 24),

              // ------------------------------ Registro ------------------------------
              Center(
                child: RichText(
                  text: TextSpan(
                    style:
                    const TextStyle(color: Colors.black87, fontSize: 14),
                    children: [
                      const TextSpan(text: "Don't have an account? "),
                      TextSpan(
                        text: "Register",
                        style: const TextStyle(
                          color: Color(0xFFFF5A79),
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacementNamed(
                                context, '/register');
                          },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ------------------------------ Linha inferior ------------------------------
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
