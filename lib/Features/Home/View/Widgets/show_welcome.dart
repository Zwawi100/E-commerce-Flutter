import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';

class ShowWelcome extends StatelessWidget {
  const ShowWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 10,
        ),
        Text("Hi Omar" , style: TextStyle(color: kSecondaryTextColor ,fontWeight: FontWeight.bold),),
        Spacer(
          flex: 1,
        )
      ],
    );
  }
}