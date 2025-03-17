import 'package:coin_craft_ui/core/themes.dart';
import 'package:coin_craft_ui/core/utils/social_media_type.dart';
import 'package:flutter/material.dart';
import 'package:uicons/uicons.dart';


class SocialMediaButton extends StatelessWidget {
  final SocialMedia socialMedia;
  final void Function() onPressed;

  const SocialMediaButton({
    super.key,
    required this.socialMedia,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          backgroundColor: CraftColors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(
              color: CraftColors.black,
              size: 18,
              socialMedia == SocialMedia.google
                  ? UIcons.brands.google
                  : UIcons.brands.apple,
            ),
            const SizedBox(width: 10),
            Text(
              socialMedia == SocialMedia.google ? 'Google' : 'Apple',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: CraftColors.black,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
