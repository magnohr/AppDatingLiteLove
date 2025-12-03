import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tre/core/theme/app_colors.dart';

class BarraPesquisa extends StatelessWidget {
  const BarraPesquisa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 385,
      decoration: BoxDecoration(
        color: AppColors.pinkLight.withOpacity(0.45),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        children: [
          const SizedBox(width: 20),

          SvgPicture.asset(
            "assets/images/barra_pesquisa.svg",
            width: 26,
            height: 26,
            color: Colors.white,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: TextField(
              style: const TextStyle(color: Colors.white, fontSize: 17),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                hintText: "Search here",
                hintStyle: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
