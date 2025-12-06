import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // --- CARREGA EMAIL DO FIREBASE ---
  Future<void> loadSavedData() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      emailController.text = user.email ?? "";
    }
  }

  bool isValid() {
    final email = emailController.text.trim();
    return email.contains("@") &&
        email.contains(".") &&
        passwordController.text.isNotEmpty;
  }

  // -------- LOGIN NO FIREBASE --------
  Future<String?> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      return null; // sucesso
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}
