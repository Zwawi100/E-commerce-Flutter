import 'package:flutter/material.dart';

import 'Widgets/Register_Page_Body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static const routeName = "RegisterPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterPageBody(),
    );
  }
}