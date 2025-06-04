import 'package:finalproject/Core/Cutom_Widget/Custom_ElevatedButton.dart';
import 'package:finalproject/Core/Cutom_Widget/Custom_textField.dart';
import 'package:finalproject/Core/Cutom_Widget/Navigate_Text_Button.dart';
import 'package:finalproject/Core/Cutom_Widget/Primary_Text.dart';
import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';

import '../../../Login/View/Login_Screen.dart';
import 'Selected_Gender.dart';

// ignore: must_be_immutable
class RegisterPageBody extends StatelessWidget {
  RegisterPageBody({super.key});

  late TextEditingController _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KPrimartText(fontSize: 40),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            controller: _controller1,
            text: "Full Name",
            icon: Icons.person,
            iconcolor: kPrimaryColor,
          ),
          CustomTextField(
            controller: _controller1,
            text: "Email",
            icon: Icons.email,
            iconcolor: kPrimaryColor,
          ),
          CustomTextField(
            controller: _controller1,
            text: "Phone number",
            icon: Icons.phone,
            iconcolor: kPrimaryColor,
          ),
          CustomTextField(
            controller: _controller1,
            text: "Password",
            icon: Icons.key,
            iconcolor: kPrimaryColor,
          ),
          CustomTextField(
            controller: _controller1,
            text: "Confirm Password",
            icon: Icons.key,
            iconcolor: kPrimaryColor,
          ),
          CustomTextField(
            controller: _controller1,
            text: "Address",
            icon: Icons.location_city,
            iconcolor: kPrimaryColor,
          ),
          SelectGender(),
          Center(child: CustomElevatedButton(text: "Register", navigateTo: LoginScreen.routeName,)),
          NavigateBetweenLoginAndRegisterButton(
            text: "I have already an account",
            buttonText: "Login",
            navigatorRouteTo: LoginScreen.routeName,
          )
        ],
      ),
    );
  }
}

