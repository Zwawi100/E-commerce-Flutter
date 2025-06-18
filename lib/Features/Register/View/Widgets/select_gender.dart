import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectGender extends StatelessWidget {
  SelectGender({super.key, required this.selectedGender});
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: DropdownButtonFormField(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text(
                "Select gender ...",
                style: TextStyle(color: kPrimaryColor),
              )),
          value: selectedGender,
          items: ["male", "female"].map((gender) {
            return DropdownMenuItem(value: gender, child: Text(gender));
          }).toList(),
          onChanged: (value) {
            selectedGender = value;
          },
          validator: (value) =>
              value == null ? "please select a gender" : null),
    );
  }
}
