import "package:flutter/material.dart";
import "dart:async";

class DelayedAnimation extends StatefulWidget {
  final Widget child;
  final Widget delay;

  const DelayedAnimation({required this.delay, required this.child});

  @override
  State<DelayedAnimation> createState() => _DelayedAnimationState();
}

class _DelayedAnimationState extends State<DelayedAnimation>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
