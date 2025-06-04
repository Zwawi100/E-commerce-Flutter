import 'package:finalproject/Features/Register/View_Model/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Widgets/Register_Page_Body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static const routeName = "RegisterPage";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> RegisterViewModel(),
      child: Scaffold(
        body: RegisterPageBody(),
      ),
    );
  }
}