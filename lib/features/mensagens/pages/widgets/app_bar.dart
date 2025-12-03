import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tre/core/theme/app_colors.dart';

class App_Bar extends StatelessWidget {
  const App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: const Text("Mensagens"),

      leading: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SizedBox(
                  height: 32,
                  width: 32,
                  child: SvgPicture.asset(
                    "assets/images/drawer_icon.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
