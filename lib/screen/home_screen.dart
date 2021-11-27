import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:sunshine/common/constant.dart';
import 'package:sunshine/common/theme.dart';
import 'package:sunshine/widget/layout/margin_center_align.dart';

class HomesScreen extends StatefulWidget {
  const HomesScreen({Key? key}) : super(key: key);

  @override
  _HomesScreenState createState() => _HomesScreenState();
}

class _HomesScreenState extends State<HomesScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var isNarrow = false;
    if (screenWidth < SCREEN_THRESHOLD) {
      isNarrow = true;
    }
    return Scaffold(
      body: ListView(
        children: [
          _buildAppbar(isNarrow),
          _buildFirstSection(isNarrow, screenWidth),
        ],
      ),
    );
  }

  Container _buildFirstSection(bool isNarrow, double screenWidth) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 70.0),
      child: isNarrow
          ? Column(children: [
              SizedBox(width: (screenWidth * .8), child: buildHanbokImage),
              const SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("ヨボセヨー♪", style: CustomTextTheme.mochiPopOneHuge),
                  const SizedBox(height: 20),
                  Text("友達とのおしゃべりのように楽しく始まる韓国語会話",
                      style: CustomTextTheme.mochiPopOne),
                  const SizedBox(height: 100),
                  callingWomanImage,
                  const SizedBox(height: 50),
                  Text("毎月１０名限定！", style: CustomTextTheme.mplus1Regular),
                  const SizedBox(height: 30),
                  Text(
                      "実際に韓国人とおしゃべりしたーい！と思ってませんか\n友達とのおしゃべりのように楽しく始まる韓国語会話\n日常の話、自分が好きな主題からビジネスで役立つ表現まで選択できます！",
                      style: CustomTextTheme.mplus1ExtraLight),
                ],
              ),
            ])
          : Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                        width: (screenWidth / 3.2), child: buildHanbokImage),
                    const SizedBox(height: 200),
                  ],
                ),
                const SizedBox(width: 100),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("ヨボセヨー♪", style: CustomTextTheme.mochiPopOneHuge),
                      const SizedBox(height: 20),
                      Text("友達とのおしゃべりのように楽しく始まる韓国語会話",
                          style: CustomTextTheme.mochiPopOne),
                      const SizedBox(height: 200),
                      Row(
                        children: [
                          SizedBox(
                              width: (screenWidth / 6),
                              child: callingWomanImage),
                          const SizedBox(width: 50),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text("🌟 毎月１０名限定！ 🌟",
                                    style: CustomTextTheme.mplus1Regular),
                                const SizedBox(height: 30),
                                Text(
                                    "実際に韓国人とおしゃべりしたーい！と思ってませんか\n友達とのおしゃべりのように楽しく始まる韓国語会話\n日常の話、自分が好きな主題からビジネスで役立つ表現まで選択できます！",
                                    style: CustomTextTheme.mplus1ExtraLight),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }

  MarginCenterAlign _buildAppbar(bool isNarrow) {
    return MarginCenterAlign(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Row(
          children: [
            Flexible(
              child: Text("Sunshine Korean Call",
                  style: isNarrow
                      ? CustomTextTheme.poppinsSemiBoldSmaller
                      : CustomTextTheme.poppinsSemiBold),
            ),
            if (!isNarrow)
              Expanded(
                child: Row(
                  children: [
                    const SizedBox(width: 50),
                    TextButton(
                        onPressed: () {},
                        child: Text("About",
                            style: CustomTextTheme.poppinsMedium)),
                    TextButton(
                        onPressed: () {},
                        child:
                            Text("Plan", style: CustomTextTheme.poppinsMedium)),
                    TextButton(
                        onPressed: () {},
                        child: Text("Contact",
                            style: CustomTextTheme.poppinsMedium)),
                  ],
                ),
              ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: Text("Login", style: CustomTextTheme.poppinsMedium)),
            if (isNarrow)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 50),
                  IconButton(
                      onPressed: () {}, icon: const Icon(FeatherIcons.menu)),
                ],
              ),
          ],
        ),
      ),
    );
  }

  ClipRRect get buildHanbokImage => buildClipRRect('hanbok');

  ClipRRect get callingWomanImage => buildClipRRect('calling_woman');

  ClipRRect buildClipRRect(name) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('assets/images/main-page/${name}.jpeg'),
    );
  }
}
