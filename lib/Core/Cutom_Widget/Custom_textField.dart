import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  TextInputType? type;
  FormFieldValidator<String>? validation;
  String? text;
  IconData? icon;
  Color? iconcolor;
  bool? obscureText;
  CustomTextField(
      {super.key,
      required this.controller,
      required this.text,
      this.icon,
      this.iconcolor,
      this.validation,
      this.obscureText = false,
      this.type = TextInputType.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 ),
      child: TextFormField(
        keyboardType: type,
        controller: controller,
        obscureText: obscureText!,
        validator: validation,
        decoration: InputDecoration(
          hintText: text,
          // ignore: deprecated_member_use
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
          label: Text(text!),
          labelStyle: TextStyle(color: kSecondaryTextColor),
          prefixIcon: Icon(
            icon,
            color: iconcolor,
          ),
          border: OutlineInputBorder(),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: kPrimaryColor)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: kPrimaryColor)),
        ),
      ),
    );
  }
}
