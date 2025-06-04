import 'package:flutter/material.dart';

import 'Widgets/Home_Screen_Body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    return HomeScreenBody();
  }
}
