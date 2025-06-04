import 'package:finalproject/Core/Cutom_Widget/Custom_ElevatedButton.dart';
import 'package:finalproject/Core/Cutom_Widget/Custom_textField.dart';
import 'package:finalproject/Core/Cutom_Widget/Navigate_Text_Button.dart';
import 'package:finalproject/Core/Cutom_Widget/Primary_Text.dart';
import 'package:finalproject/Features/Register/View_Model/register_view_model.dart';
import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Login/View/Login_Screen.dart';
import 'Selected_Gender.dart';

// ignore: must_be_immutable
class RegisterPageBody extends StatelessWidget {
  const RegisterPageBody({super.key});
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<RegisterViewModel>(context);

    cPassValiadation(value) {
      if (value == null || value.trim().isEmpty) {
        return "please confirm password";
      } else if (value != vm.password.text) {
        return "wrong confirmed password";
      }
      return null;
    }

    passValidation(value) {
      if (value == null || value.trim().isEmpty || value.trim().length <= 6) {
        return "password should be more than 6 characters";
      }
      return null;
    }

    emptyValidation(value) {
      if (value == null || value.trim().isEmpty) {
        return "this field is empty";
      }
      return null;
    }

    emailValidation(value) {
      if (value == null || value.trim().isEmpty) {
        return "please fill email field";
      } else if (!value.endsWith("@gmail.com")) {
        return "email should end with @gmail.com";
      } else {
        return null;
      }
    }

    phoneValidation(value) {
      if (value == null || value.isEmpty || !value.startsWith('01')) {
        return 'Enter a valid phone number';
      }
      return null;
    }

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
          Form(
              key: vm.formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller: vm.firstName,
                    validation: emptyValidation,
                    text: "First Name",
                    icon: Icons.person,
                    iconcolor: kPrimaryColor,
                  ),
                  CustomTextField(
                    controller: vm.lastName,
                    validation: emptyValidation,
                    text: "Last Name",
                    icon: Icons.person,
                    iconcolor: kPrimaryColor,
                  ),
                  CustomTextField(
                    controller: vm.email,
                    validation: emailValidation,
                    text: "Email",
                    icon: Icons.email,
                    iconcolor: kPrimaryColor,
                  ),
                  CustomTextField(
                    type: TextInputType.phone,
                    controller: vm.phone,
                    validation: phoneValidation,
                    text: "Phone number",
                    icon: Icons.phone,
                    iconcolor: kPrimaryColor,
                  ),
                  CustomTextField(
                    obscureText: true,
                    controller: vm.password,
                    validation: passValidation,
                    text: "Password",
                    icon: Icons.key,
                    iconcolor: kPrimaryColor,
                  ),
                  CustomTextField(
                    obscureText: true,
                    controller: vm.confirmPassword,
                    validation: cPassValiadation,
                    text: "Confirm Password",
                    icon: Icons.key,
                    iconcolor: kPrimaryColor,
                  ),
                  CustomTextField(
                    type: TextInputType.multiline,
                    controller: vm.address,
                    validation: emptyValidation,
                    text: "Address",
                    icon: Icons.location_city,
                    iconcolor: kPrimaryColor,
                  ),
                ],
              )),
          SelectGender(),
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
