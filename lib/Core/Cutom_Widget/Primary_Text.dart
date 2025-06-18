import 'package:flutter/material.dart';

import '../../constant.dart';

class KPrimartText extends StatelessWidget {
  final double fontSize;
  const KPrimartText({
    super.key, required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (bounds) =>
            LinearGradient(colors: [kPrimaryColor, kSecondaryColor])
                .createShader(bounds),
        child: Text(
          "Z Store",
          style: TextStyle(
              fontSize: fontSize,
              color: kPrimaryTextColor,
              fontWeight: FontWeight.bold),
        ));
  }
}
