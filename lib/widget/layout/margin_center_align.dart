import 'package:flutter/material.dart';
import 'package:sunshine/common/constant.dart';

class MarginCenterAlign extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Alignment? alignment;
  final double? width;
  final double horizontalPadding;

  const MarginCenterAlign(
      {Key? key,
      required this.child,
      this.alignment,
      horizontalPadding,
      color,
      this.width})
      : horizontalPadding = horizontalPadding ?? 40.0,
        color = color ?? Colors.white,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      bool isNarrow = constraint.maxWidth < SCREEN_THRESHOLD;
      var maxScreenWidth = isNarrow ? constraint.maxWidth : SCREEN_THRESHOLD;
      maxScreenWidth = maxScreenWidth - horizontalPadding * 2;
      return Container(
        alignment: alignment ?? Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxScreenWidth),
          child: Container(color: color, child: child),
        ),
      );
    });
  }
}
