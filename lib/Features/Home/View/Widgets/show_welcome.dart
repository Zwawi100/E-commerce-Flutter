import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';

class ShowWelcome extends StatelessWidget {
  const ShowWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16, bottom: 16),
          child: Text(
            "Hi Omar",
            style: TextStyle(
                color: kSecondaryTextColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
