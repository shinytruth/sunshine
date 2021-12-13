import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:sunshine/common/constant.dart';
import 'package:sunshine/common/theme.dart';
import 'package:sunshine/widget/layout/responsive_container.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var isNarrow = false;
    if (screenWidth < SCREEN_THRESHOLD) {
      isNarrow = true;
    }
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 30, horizontal: horizontalPadding),
      child: ResponsiveContainer(
        narrow: Row(
          children: [
            Text("Sunshine Korean Call",
                style: isNarrow
                    ? CustomTextTheme.poppinsSemiBoldSmaller
                    : CustomTextTheme.poppinsSemiBold),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(FeatherIcons.menu)),
          ],
        ),
        wide: Row(
          children: [
            Text("Sunshine Korean Call",
                style: isNarrow
                    ? CustomTextTheme.poppinsSemiBoldSmaller
                    : CustomTextTheme.poppinsSemiBold),
            const SizedBox(width: 50),
            TextButton(
                onPressed: () {},
                child: Text("About", style: CustomTextTheme.poppinsMedium)),
            TextButton(
                onPressed: () {},
                child: Text("Plan", style: CustomTextTheme.poppinsMedium)),
            TextButton(
                onPressed: () {},
                child: Text("Contact", style: CustomTextTheme.poppinsMedium)),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: Text("Login", style: CustomTextTheme.poppinsMedium)),
          ],
        ),
      ),
    );
  }
}
