import 'package:flutter/material.dart';
import 'package:sunshine/common/constant.dart';

class ResponsiveContainer extends StatelessWidget {
  final Widget narrow;
  final Widget wide;

  const ResponsiveContainer(
      {Key? key, required this.narrow, required this.wide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < SCREEN_THRESHOLD ? narrow : wide;
  }
}
