import 'package:flutter/material.dart';

class SlideFadeInAnimation extends StatefulWidget {
  final Widget child;

  const SlideFadeInAnimation({Key? key, required this.child}) : super(key: key);

  @override
  State<SlideFadeInAnimation> createState() => _SlideFadeInAnimationState();
}

class _SlideFadeInAnimationState extends State<SlideFadeInAnimation>
    with SingleTickerProviderStateMixin {
  Widget? child;

  @override
  void initState() {
    child = widget.child;

    Future.delayed(const Duration(milliseconds: 400)).then((value) =>
        _controller.forward());

    super.initState();
  }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  );

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0.0, .3),
    end: Offset.zero,
  ).animate(CurvedAnimation(
      parent: _controller, curve: Curves.fastLinearToSlowEaseIn));

  late final Animation<double> _opacityAnimation = CurvedAnimation(
      parent: _controller, curve: Curves.easeIn);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityAnimation,
      child: SlideTransition(
        position: _offsetAnimation,
        child: child!,
      ),
    );
  }
}
