import 'package:flutter/material.dart';

class StoryBorderClipper extends StatelessWidget {
  final Widget child;
  final BorderRadiusGeometry? borderRadius;
  final bool useBorderRadius;

  const StoryBorderClipper({
    required this.child,
    this.borderRadius,
    this.useBorderRadius = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (useBorderRadius) {
      return ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: child,
      );
    }
    return child;
  }
}
