import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedBackground extends StatelessWidget {
  final Widget child;
  final double rotation;

  const FrostedBackground({
    super.key,
    required this.child,
    required this.rotation,
  });

  @override
  Widget build(BuildContext context) {
    return Transform(
      origin: const Offset(15, 15),
      transform: Matrix4.rotationZ(rotation),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          // height: 60,
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Center(child: child),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.1),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
