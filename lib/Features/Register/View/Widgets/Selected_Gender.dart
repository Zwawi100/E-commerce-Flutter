import 'package:flutter/material.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  String? _selectedGender;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio(
                value: "Men",
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                }),
                Text("Men"),
            Radio(
                value: "Female",
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                }),
                Text("Female"),
                
                (_selectedGender == null) ? Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("please select gender" , style: TextStyle(color: Colors.red),),
                ):SizedBox()
                
          ],
        ),
      ],
    );
  }
}
