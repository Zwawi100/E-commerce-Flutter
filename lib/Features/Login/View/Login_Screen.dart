import 'package:finalproject/Features/Login/View_Model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Widgets/Login_View_Body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginViewModel() ,
      child: Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}