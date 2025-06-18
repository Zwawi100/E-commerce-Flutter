import 'package:finalproject/Features/Home/View_Model/product_view_model.dart';
import 'package:finalproject/Features/Login/View_Model/login_view_model.dart';
import 'package:finalproject/Features/Profile/View/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Features/Home/View/Home_Screen.dart';
import 'Features/Home/View_Model/search_view_model.dart';
import 'Features/Login/View/login_screen.dart';
import 'Features/Profile/view_model/profile_view_model.dart';
import 'Features/Register/View/register_screen.dart';
import 'Features/Register/View_Model/register_view_model.dart';
import 'Features/Splash/View/Splash_View.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>RegisterViewModel()),
      ChangeNotifierProvider(create: (_)=>LoginViewModel()),
      ChangeNotifierProvider(create: (_)=>SearchViewModel()),
      ChangeNotifierProvider(create: (_)=> ProductViewModel()..loadingProducts()),
      ChangeNotifierProvider(create: (_) => ProfileViewModel()),

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
        HomeScreen.routeName: (context) => HomeScreen(),
        ProfilePage.routeName:(context) =>ProfilePage()
      },
    );
  }
}
