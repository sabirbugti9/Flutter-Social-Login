import 'package:coin_craft_ui/core/themes.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final void Function() onPressed;

  const GetStartedButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          backgroundColor: CraftColors.black,
          foregroundColor: CraftColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          'Get Started',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: CraftColors.white,
              letterSpacing: .2,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
