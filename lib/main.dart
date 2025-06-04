import 'package:finalproject/Features/Login/View_Model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Features/Home/View/Home_Screen.dart';
import 'Features/Login/View/login_screen.dart';
import 'Features/Register/View/register_screen.dart';
import 'Features/Register/View_Model/register_view_model.dart';
import 'Features/Splash/View/Splash_View.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>RegisterViewModel()),
      ChangeNotifierProvider(create: (_)=>LoginViewModel())
    ],
  child: ZProject(),));
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
