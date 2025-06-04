import 'package:finalproject/Core/Cutom_Widget/Custom_textField.dart';
import 'package:finalproject/Core/Cutom_Widget/Primary_Text.dart';
import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Cutom_Widget/Custom_ElevatedButton.dart';
import '../../../../../Core/Cutom_Widget/Navigate_Text_Button.dart';
import '../../../Register/View/register_screen.dart';

// ignore: must_be_immutable
class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});

  late final TextEditingController _controller1 = TextEditingController();
  late final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 12),
        KPrimartText(fontSize: 40),
        Spacer(flex: 15),
        CustomTextField(
          controller: _controller1,
          text: "Email",
          icon: Icons.email,
          iconcolor: kPrimaryColor,
        ),
        Spacer(flex: 1),
        CustomTextField(
          controller: _controller2,
          obscureText: true,
          text: "Password",
          icon: Icons.key,
          iconcolor: kPrimaryColor,
        ),
        Spacer(
          flex: 1,
        ),
        CustomElevatedButton(
          text: 'Login',
          onpressed: () {  },
        ),
        Spacer(
          flex: 1,
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
