import 'package:flutter/material.dart';

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
      // bool isNarrow = constraint.maxWidth < MAX_SCREEN_WIDTH;
      // var maxScreenWidth = isNarrow ? constraint.maxWidth : MAX_SCREEN_WIDTH;
      // maxScreenWidth = maxScreenWidth - horizontalPadding * 2;
      var maxScreenWidth = constraint.maxWidth - horizontalPadding * 2;
      var maxWidth2 = width ?? maxScreenWidth;
      return Container(
        alignment: alignment ?? Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth2),
          child: Container(color: color, child: child),
        ),
      );
    });
  }
}
