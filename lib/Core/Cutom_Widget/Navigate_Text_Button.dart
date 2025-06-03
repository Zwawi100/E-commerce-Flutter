import 'package:flutter/material.dart';
import '../../constant.dart';

class NavigateBetweenLoginAndRegisterButton extends StatelessWidget {
  const NavigateBetweenLoginAndRegisterButton({
    super.key,
    required this.text,
    required this.buttonText, required this.navigatorRouteTo,
  });
  final String navigatorRouteTo;
  final String text;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 12),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, navigatorRouteTo);
            },
            child: Text(
              buttonText,
              style: TextStyle(color: kPrimaryColor),
            )),
      ],
    );
  }
}
