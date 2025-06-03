import 'package:finalproject/Features/Login/Presentation/View/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'Features/Splash/Presentation/View/Splash_View.dart';

void main() {
  runApp(ZProject());
}

class ZProject extends StatelessWidget {
  const ZProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) =>SplashScreen(),
        LoginScreen.routeName : (context) =>LoginScreen(),

      },
    );
  }
}

