import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tre/core/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLogin();
  }

  Future<void> _checkLogin() async {
    final prefs = await SharedPreferences.getInstance();
    final bool isRemember = prefs.getBool('remember') ?? false;

    await Future.delayed(const Duration(seconds: 2));

    if (isRemember) {
      Navigator.pushReplacementNamed(context, '/NavigationBar');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.pinkPale,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),  // reduzido para não estourar

                  SvgPicture.asset('assets/images/lite_love.svg'),

                  const SizedBox(height: 30),

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('assets/images/coracao.svg'),
                      SvgPicture.asset('assets/images/casal.svg'),
                    ],
                  ),

                  const SizedBox(height: 80), // reduzido
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
