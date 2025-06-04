
import 'package:flutter/material.dart';
import 'Widgets/Splash_View_Body.dart';

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
