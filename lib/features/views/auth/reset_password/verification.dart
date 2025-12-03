import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tre/core/theme/app_colors.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.pushReplacementNamed(context, '/reset'),
                child: SvgPicture.asset(
                  'assets/images/seta_esquerda.svg',
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'OTP code verification',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 27),
              const Text(
                'We will send an OTP code to your email and********03@ \n.com . Enter the OTP code below to verify. ',
              ),
              const SizedBox(height: 57),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 1ª caixinha
                  Container(
                    width: 66,
                    height: 94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(79),
                      color: AppColors.kLightPink,
                      border: Border.all(
                        color: AppColors.rose,
                        width: 2,
                      ),
                    ),
                    child: const Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  // 2ª caixinha
                  Container(
                    width: 66,
                    height: 94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(79),
                      color: AppColors.kLightPink,
                      border: Border.all(
                        color: AppColors.rose,
                        width: 2,
                      ),
                    ),
                    child: const Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  // 3ª caixinha com coração atrás
                  SizedBox(
                    width: 66,
                    height: 94,
                    child: Stack(
                      clipBehavior: Clip.none, // permite o SVG "vazar" pra fora sem erro
                      alignment: Alignment.center,
                      children: [
                        // Coração atrás (um pouco deslocado pra cima)
                        Positioned(
                          top: -50, // sobe o coração sem empurrar o layout
                          child: SvgPicture.asset(
                            'assets/images/coracao2.svg',
                            width: 100,
                            height: 100,
                          ),
                        ),

                        // Caixinha por cima
                        Container(
                          width: 66,
                          height: 94,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(79),
                            color: AppColors.kLightPink,
                            border: Border.all(
                              color: AppColors.rose,
                              width: 2,
                            ),
                          ),
                          child: const Center(
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                counterText: "",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 4ª caixinha
                  Container(
                    width: 66,
                    height: 94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(79),
                      color: AppColors.kLightPink,
                      border: Border.all(
                        color: AppColors.rose,
                        width: 2,
                      ),
                    ),
                    child: const Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 34),

              // Texto "You can resend..."
              Center(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    children: [
                      const TextSpan(text: 'You can resend code in '),
                      TextSpan(
                        text: '32',
                        style: TextStyle(
                          color: AppColors.rose,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextSpan(text: ' s'),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),
              const Center(
                child: Text('Don’t receive email?'),
              ),
              const SizedBox(height: 52),

              // Botão "Next"
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/novaSenha');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.pinkCoral,
                    minimumSize: const Size(335, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
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
