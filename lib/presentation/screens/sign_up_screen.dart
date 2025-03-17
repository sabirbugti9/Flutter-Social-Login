import 'dart:ui';

import 'package:coin_craft_ui/core/themes.dart';
import 'package:coin_craft_ui/core/utils/social_media_type.dart';
import 'package:coin_craft_ui/presentation/state/sign_up_screen_view_model.dart';
import 'package:coin_craft_ui/presentation/widgets/center_star.dart';
import 'package:coin_craft_ui/presentation/widgets/frosted_background.dart';
import 'package:coin_craft_ui/presentation/widgets/get_started_button.dart';
import 'package:coin_craft_ui/presentation/widgets/social_media_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uicons/uicons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 7,
                  ),
                  const CenterStar(),
                  const Spacer(
                    flex: 3,
                  ),
                  _gradientCoinImage(),
                  const Spacer(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  _couldGradientImage(),
                  const Spacer(
                    flex: 4,
                  ),
                  _coinText(context),
                  const Spacer(
                    flex: 6,
                  ),
                ],
              ),
              Expanded(
                  child: Stack(
                alignment: Alignment.center,
                children: [
                  _secondRim(context),
                  _firstRim(context),
                  _mainBody(context),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Padding _coinText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Coin',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: CraftColors.white,
                fontWeight: FontWeight.w900,
              ),
          children: [
            TextSpan(
              text: 'Craft',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: CraftColors.white,
                    fontWeight: FontWeight.w500,
                  ),
            )
          ],
        ),
      ),
    );
  }

  FrostedBackground _couldGradientImage() {
    return FrostedBackground(
      rotation: -0.523599,
      child: Image.asset(
        'lib/presentation/images/cloud_1.png',
        height: 30,
        width: 26,
      ),
    );
  }

  FrostedBackground _gradientCoinImage() {
    return FrostedBackground(
      rotation: 0.523599,
      child: Transform(
        origin: const Offset(15, 15),
        transform: Matrix4.rotationZ(0.261799),
        child: Image.asset(
          'lib/presentation/images/coins.png',
          height: 30,
          width: 26,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Positioned _mainBody(BuildContext context) {
    final viewModel =
        Provider.of<SignUpScreenViewModel>(listen: false, context);

    return Positioned(
      top: 40,
      right: 0,
      left: 0,
      child: Container(
        height: MediaQuery.sizeOf(context).height * .62,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: CraftColors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // star
              Icon(UIcons.solidRounded.star),

              const SizedBox(
                height: 20,
              ),

              // get started
              Text(
                'Get Started',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SocialMediaButton(
                      socialMedia: SocialMedia.google,
                      onPressed: viewModel.loginWithGoogle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: SocialMediaButton(
                      socialMedia: SocialMedia.apple,
                      onPressed: viewModel.loginWithApple,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              // username field
              TextField(
                controller: viewModel.usernameController,
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // email field
              TextField(
                controller: viewModel.emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // password field
              TextField(
                controller: viewModel.passwordController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              GetStartedButton(
                onPressed: viewModel.getStarted,
              ),

              const SizedBox(
                height: 10,
              ),

              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: 'Login',
                        recognizer: TapGestureRecognizer()
                          ..onTap = viewModel.navigateToLoginPage,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: CraftColors.black,
                              fontWeight: FontWeight.w800,
                            ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _firstRim(BuildContext context) {
    return Positioned(
      top: 20,
      right: 5,
      left: 5,
      child: Container(
        height: MediaQuery.sizeOf(context).height * .6,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: CraftColors.firstRimColor,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  Positioned _secondRim(BuildContext context) {
    return Positioned(
      top: 0,
      right: 10,
      left: 10,
      child: Container(
        height: MediaQuery.sizeOf(context).height * .6,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: CraftColors.secondRimColor,
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }
}
