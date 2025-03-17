import 'package:flutter/material.dart';

import 'core/themes.dart';
import 'presentation/screens/sign_up_screen.dart';

class CoinCraft extends StatelessWidget {
  const CoinCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coin Craft',
      theme: appTheme,
      home: const SignUpScreen(),
    );
  }
}
