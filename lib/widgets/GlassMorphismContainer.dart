import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphismContainer extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final Widget child;
  const GlassMorphismContainer({
    Key? key,
    // required this.size,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.child,
  }) : super(key: key);

  // final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(this.borderRadius),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 15,
          sigmaX: 15,
        ),
        child: Container(
          height: this.height,
          width: this.width,
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  colors: [
                    Colors.white.withOpacity(0.20),
                    Colors.white.withOpacity(0.10)
                  ], radius: 50.0
              )
          ),
          child: this.child,
        ),
      ),
    );
  }
}
