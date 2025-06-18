import 'package:finalproject/Features/Register/View/Widgets/select_gender.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Cutom_Widget/Custom_textField.dart';
import '../../../../constant.dart';
import '../../View_Model/register_view_model.dart';

class UserForm extends StatelessWidget {
  const UserForm({
    super.key,
    required this.vm,
  });

  final RegisterViewModel vm;

  @override
  Widget build(BuildContext context) {
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
    return Form(
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
            SelectGender(selectedGender: vm.selctedGender)
          ],
        ));
  }
}
