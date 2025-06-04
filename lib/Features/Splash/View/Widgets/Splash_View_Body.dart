import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';

import '../../../Login/View/Login_Screen.dart';
import 'Sliding_Text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
    navigatetoLogin();
  }

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryTextColor
      ),
      child: Center(
        child: Column(
          children: [
            Spacer(
              flex: 10,
            ),
            SlidingText(slidingAnimation: slidingAnimation),
            Spacer(
              flex: 7,
            ),
            Text("Shop become easily.",style: TextStyle( color: kPrimaryTextColor ),),
            Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    slidingAnimation = Tween<Offset>(begin: Offset(0, -4), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigatetoLogin() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, LoginScreen.routeName);
    });
  }
}
