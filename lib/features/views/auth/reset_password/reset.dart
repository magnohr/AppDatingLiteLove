import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_colors.dart';



class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              InkWell(
                onTap: () => Navigator.pushReplacementNamed(context, '/register'),
                child: SvgPicture.asset(
                  'assets/images/seta_esquerda.svg',
                  width: 30,
                  height: 30,
                ),
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  Text('Reset your password',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),

                  ),
                ],

              ),
              SizedBox(height: 18),
              Text(
                'enter your email we will send an OTP code in the next step to reset your password'
              ),

              SizedBox(height: 57),

              SizedBox(
                width: 355,
                height: 48,
                child: TextField(

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
                    labelText: 'Seu Email',
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

              SizedBox(height: 336),

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
                    Navigator.pushReplacementNamed(context, '/verification');

                  },
                  //===========================
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
