import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppSplashView extends StatelessWidget {
  const AppSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Align(
            child: Assets.animations.djamoLoader.lottie(
                key: const ValueKey('loader'),
                height: 400, //AppSizes.h.custom(400),
                width: 400 //AppSizes.h.custom(400),
                ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(padding: EdgeInsets.zero, child: Text("")),
          ),
        ],
      ),
    );
  }
}
