import 'package:finalproject/Core/Cutom_Widget/Custom_ElevatedButton.dart';
import 'package:finalproject/Core/Cutom_Widget/Navigate_Text_Button.dart';
import 'package:finalproject/Core/Cutom_Widget/Primary_Text.dart';
import 'package:finalproject/Features/Register/View_Model/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Login/View/login_screen.dart';
import 'user_register_form.dart';

// ignore: must_be_immutable
class RegisterPageBody extends StatelessWidget {
  const RegisterPageBody({super.key});
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<RegisterViewModel>(context);
    return Container(
      child: ListView(
        children: [
          SizedBox(
            height: 50,
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
          UserForm(vm: vm),
          vm.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: CustomElevatedButton(
                  text: "Register",
                  onpressed: () => vm.register(context),
                )),
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