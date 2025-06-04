import 'package:flutter/material.dart';
import 'Features/Home/View/Home_Screen.dart';
import 'Features/Login/View/Login_Screen.dart';
import 'Features/Register/View/Register_Page.dart';
import 'Features/Splash/View/Splash_View.dart';


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
        SplashScreen.routeName: (context) => SplashScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterPage.routeName: (context) => RegisterPage(),
        HomeScreen.routeName: (context) => HomeScreen()
      },
    );
  }
}
