import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key, required this.text, required this.onpressed,
  });
  final String text;
  final VoidCallback onpressed;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:onpressed ,
        child: Text(
          text,
          style: TextStyle(color: kPrimaryColor),
        )
        );
  }
}
