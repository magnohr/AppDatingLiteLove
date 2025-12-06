import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../model_register/model_register.dart';

class RegisterController {
  // -----------------------------
  // CONTROLLERS
  // -----------------------------
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final dayController = TextEditingController();
  final monthController = TextEditingController();
  final yearController = TextEditingController();

  // -----------------------------
  // ESTADO
  // -----------------------------
  bool isMale = false;
  bool isFemale = false;
  bool isRemember = false;

  // -----------------------------
  // VALIDAÇÃO AJUSTADA
  // -----------------------------
  String? validate() {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    // Email válido
    if (!email.contains("@") || !email.contains(".")) {
      return "Digite um email válido.";
    }

    // Senha (mínimo recomendado para Firebase)
    if (password.length < 6 ||
        !password.contains(RegExp(r'[A-Z]')) ||   // maiúscula
        !password.contains(RegExp(r'[a-z]'))      // minúscula
    ) {
      return "A senha deve ter 6 caracteres, com letra maiúscula e minúscula.";
    }

    // Nome vazio
    if (nameController.text.isEmpty) {
      return "Digite seu nome.";
    }

    // Data de nascimento
    if (dayController.text.isEmpty ||
        monthController.text.isEmpty ||
        yearController.text.isEmpty) {
      return "Preencha sua data de nascimento.";
    }

    // Gênero
    if (!isMale && !isFemale) {
      return "Selecione seu gênero.";
    }

    return null;
  }

  // -----------------------------
  // REGISTRO NO FIREBASE AJUSTADO
  // -----------------------------
  Future<String?> register() async {
    try {
      // Criar usuário no Firebase Auth
      UserCredential auth = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      final uid = auth.user!.uid;

      // Criar modelo do usuário
      final user = UserModel(
        id: uid,
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        gender: isMale ? "male" : "female",
        birthday:
        "${dayController.text}/${monthController.text}/${yearController.text}",
        isRemember: isRemember,
      );

      // Salvar no Firestore
      await FirebaseFirestore.instance
          .collection("users")
          .doc(uid)
          .set(user.toMap());

      return null; // sucesso

    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') return "Este email já está cadastrado.";
      if (e.code == 'invalid-email') return "Email inválido.";
      if (e.code == 'weak-password') return "A senha é muito fraca.";
      if (e.code == 'network-request-failed') return "Sem internet.";

      return "Erro: ${e.code}";
    } catch (e) {
      return "Erro inesperado.";
    }
  }

  // -----------------------------
  // LIMPAR MEMÓRIA
  // -----------------------------
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    dayController.dispose();
    monthController.dispose();
    yearController.dispose();
  }
}
