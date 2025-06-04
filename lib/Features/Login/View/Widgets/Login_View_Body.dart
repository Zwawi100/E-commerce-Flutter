import 'package:finalproject/Core/Cutom_Widget/Custom_textField.dart';
import 'package:finalproject/Core/Cutom_Widget/Primary_Text.dart';
import 'package:finalproject/Features/Login/View_Model/login_view_model.dart';
import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/Cutom_Widget/Custom_ElevatedButton.dart';
import '../../../../../Core/Cutom_Widget/Navigate_Text_Button.dart';
import '../../../Register/View/register_screen.dart';

// ignore: must_be_immutable
class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<LoginViewModel>(context);
    return Column(
      children: [
        Spacer(flex: 12),
        KPrimartText(fontSize: 40),
        Spacer(flex: 15),
        CustomTextField(
          controller: vm.emailController,
          text: "Email",
          icon: Icons.email,
          iconcolor: kPrimaryColor,
        ),
        Spacer(flex: 1),
        CustomTextField(
          controller: vm.passwordController,
          obscureText: true,
          text: "Password",
          icon: Icons.key,
          iconcolor: kPrimaryColor,
        ),
        vm.isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : CustomElevatedButton(
                text: 'Login',
                onpressed: () => vm.login(context),
              ),
        NavigateBetweenLoginAndRegisterButton(
          text: 'I don`t have account yet',
          buttonText: 'Register',
          navigatorRouteTo: RegisterPage.routeName,
        ),
        Spacer(
          flex: 20,
        )
      ],
    );
  }
}
