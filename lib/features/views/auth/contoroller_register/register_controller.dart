import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final dayController = TextEditingController();
  final monthController = TextEditingController();
  final yearController = TextEditingController();

  bool isMale = false;
  bool isFemale = false;
  bool isRemember = false;

  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    dayController.dispose();
    monthController.dispose();
    yearController.dispose();
  }

  // -------- Salvar email e senha --------
  Future<void> saveUserData() async {
    final prefs = await SharedPreferences.getInstance();
    if (isRemember) {
      await prefs.setString('email', emailController.text);
      await prefs.setString('password', passwordController.text);
      await prefs.setBool('remember', true);
    } else {
      // Se o usuário desmarcar o "Relembrar Senha", apaga os dados salvos
      await prefs.remove('email');
      await prefs.remove('password');
      await prefs.setBool('remember', false);
    }
  }

  // -------- Carregar email e senha --------
  Future<void> loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    isRemember = prefs.getBool('remember') ?? false;

    if (isRemember) {
      emailController.text = prefs.getString('email') ?? '';
      passwordController.text = prefs.getString('password') ?? '';
    }
  }

  // -------- Validação --------
  bool isValid() {
    return nameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        dayController.text.isNotEmpty &&
        monthController.text.isNotEmpty &&
        yearController.text.isNotEmpty;
  }
}
