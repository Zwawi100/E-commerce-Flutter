import 'package:finalproject/Features/Login/Presentation/View/Widgets/Login_View_Body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(),
    );
  }
}