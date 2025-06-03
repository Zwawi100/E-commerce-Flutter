import 'package:finalproject/Features/Splash/Presentation/View/Widgets/Splash_View_Body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "SplashPage";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
