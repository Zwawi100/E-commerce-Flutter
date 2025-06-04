import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key, required this.text, required this.navigateTo,
  });
  final String text;
  final String navigateTo;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, navigateTo);
        },
        child: Text(
          text,
          style: TextStyle(color: kPrimaryColor),
        )
        );
  }
}
