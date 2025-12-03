import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_colors.dart';



class Newpassword extends StatefulWidget {
  const Newpassword({super.key});

  @override
  State<Newpassword> createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
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
              SizedBox(height: 25),
              Text('Create new password',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 27),
              Text('Create your new password if you forget it , then you \n have to do forget password . ',
                style: TextStyle(


                ),
              ),
              SizedBox(height: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Password',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 12),
                  Center(
                    child: Container(
                      width: 335,
                      height: 48,
                      child: TextField(
                       decoration: InputDecoration(
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(30),
                         ),
                         prefixIcon: Padding(
                           padding: const EdgeInsets.only(left: 12, right: 8),
                           child: SvgPicture.asset('assets/images/cadeado_icon.svg',
                           width: 20,
                             height: 18,
                           ),
                         ),
                         suffixIcon: Padding(
                             padding: const EdgeInsets.only(left: 12, right: 8),
                         child: SvgPicture.asset('assets/images/hide_icon.svg'),
                         ),
                       ),
                        ),
                     ),
                      ),
                  SizedBox(height: 12),

                  Text(
                    'Confirm new password',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 12),
                  Center(
                    child: Container(
                      width: 335,
                      height: 48,
                      child: TextField(

                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 8),
                            child: SvgPicture.asset('assets/images/cadeado_icon.svg',
                              width: 20,
                              height: 18,
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 8),
                            child: SvgPicture.asset('assets/images/hide_icon.svg'),
                          ),
                        ),

                      ),

                    ),
                  ),
                  SizedBox(height: 233),

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

                          print('Preencha todos os campos ');

                      },
                      child: const Text(
                        'Save New Password',
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


            ],
          ),
        ),
      ),
    );
  }
}
