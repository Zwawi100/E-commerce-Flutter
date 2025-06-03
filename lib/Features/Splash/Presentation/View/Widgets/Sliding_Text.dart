import 'package:flutter/material.dart';
import '../../../../../Core/Cutom_Widget/Primary_Text.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: slidingAnimation, child: KPrimartText(fontSize: 40,));
        });
  }
}

