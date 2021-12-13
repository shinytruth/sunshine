import 'package:flutter/material.dart';
import 'package:sunshine/common/constant.dart';
import 'package:sunshine/common/image/round_asset_image.dart';
import 'package:sunshine/common/theme.dart';
import 'package:sunshine/widget/appbar/main_appbar.dart';
import 'package:sunshine/widget/layout/responsive_container.dart';

class HomesScreen extends StatefulWidget {
  const HomesScreen({Key? key}) : super(key: key);

  @override
  _HomesScreenState createState() => _HomesScreenState();
}

class _HomesScreenState extends State<HomesScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: _buildEndDrawer(),
      body: ListView(
        controller: ScrollController(),
        children: [
          const MainAppBar(),
          _buildFirstSection(screenWidth),
          _buildPlanSection(screenWidth),
          _buildSecondSection()
        ],
      ),
    );
  }

  Drawer _buildEndDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text("Sunshine Korean Call",
                style: CustomTextTheme.poppinsSemiBold),
          ),
          ListTile(
            title: Text(
              'About',
              style: CustomTextTheme.poppinsMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Plan',
              style: CustomTextTheme.poppinsMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Contact',
              style: CustomTextTheme.poppinsMedium,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSecondSection() {
    var bannerMsg = "お家で気楽に電話しながら韓国語の会話力UP！";
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: ResponsiveContainer(
        wide: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              const RoundAssetImage(
                fileName: 'hanok',
              ),
              const SizedBox(height: 200),
              Text(bannerMsg, style: CustomTextTheme.mochiPopOneHuge),
              const SizedBox(height: 200),
            ],
          ),
        ),
        narrow: Column(
          children: [
            const RoundAssetImage(
              radius: BorderRadius.zero,
              fileName: 'hanok',
            ),
            const SizedBox(height: 200),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Text(bannerMsg, style: CustomTextTheme.mochiPopOneHuge)),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }

  Container _buildPlanSection(double screenWidth) {
    var subMsg1 = "プラン";
    var subMsg2 = "会話実力を高める「一日２０分」の強力な習慣";
    var subMsg3 = "・電話の後、フィードバック提供\n\n・使用した表現と似てる他の表現を教える\n\n・スピーキング習慣を分析";
    var planTitleA = "プランA";
    var planTitleB = "プランB";
    var planTitleC = "プランC";
    var planDescA = "日常会話（ドラマ、料理、スポーツ、経済など）";
    var planDescB = "ビジネス（ロールプレイ、すぐ使えるフレーズご紹介）";
    var planDescC = "ゲームのボイスチャット（LOL、Valorant、Overwatch）";
    const mediumPadding = SizedBox(height: 50);
    const smallPadding = SizedBox(height: 30);
    return Container(
        padding: const EdgeInsets.symmetric(
            vertical: 30.0, horizontal: horizontalPadding),
        child: ResponsiveContainer(
          narrow: Column(children: [
            Text(subMsg1, style: CustomTextTheme.mplus1RegularLarge),
            smallPadding,
            Text(subMsg2, style: CustomTextTheme.mplus1ExtraLight),
            smallPadding,
            Text(subMsg3, style: CustomTextTheme.mplus1ExtraLight),
            mediumPadding,
            _buildPlanCard(
                screenWidth, "conversation", planTitleA, planDescA, .9),
            mediumPadding,
            _buildPlanCard(screenWidth, "traffic", planTitleB, planDescB, .9),
            mediumPadding,
            _buildPlanCard(screenWidth, "valorant", planTitleC, planDescC, .9),
          ]),
          wide: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: (screenWidth * .3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subMsg1, style: CustomTextTheme.mplus1RegularLarge),
                    const SizedBox(height: 15),
                    Text(subMsg2, style: CustomTextTheme.mplus1ExtraLight),
                    smallPadding,
                    Text(subMsg3, style: CustomTextTheme.mplus1ExtraLight),
                  ],
                ),
              ),
              const SizedBox(width: 120),
              Flexible(
                child: Column(
                  children: [
                    _buildPlanCard(
                        screenWidth, "conversation", planTitleA, planDescA, .2),
                    smallPadding,
                    _buildPlanCard(
                        screenWidth, "traffic", planTitleB, planDescB, .2),
                    smallPadding,
                    _buildPlanCard(
                        screenWidth, "valorant", planTitleC, planDescC, .2),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _buildPlanCard(double screenWidth, String imageName, String title,
      String desc, double ratio) {
    return SizedBox(
      width: (screenWidth * ratio),
      child: Column(
        children: [
          RoundAssetImage(fileName: imageName),
          const SizedBox(height: 15),
          Text(title, style: CustomTextTheme.mplus1Regular),
          const SizedBox(height: 15),
          Text(desc, style: CustomTextTheme.mplus1ExtraLight),
        ],
      ),
    );
  }

  Container _buildFirstSection(double screenWidth) {
    var mainMsg1 = "ヨボセヨー♪";
    var mainMsg2 = "友達とのおしゃべりのように楽しく始まる韓国語会話";
    var subMsg1 = "🌟  毎月１０名限定！ 🌟";
    var subMsg2 =
        "実際に韓国人とおしゃべりしたーい！と思ってませんか\n\n友達とのおしゃべりのように楽しく始まる韓国語会話\n\n日常の話、自分が好きな主題からビジネスで役立つ表現まで選択できます！";
    return Container(
        padding: const EdgeInsets.symmetric(
            vertical: 30.0, horizontal: horizontalPadding),
        child: ResponsiveContainer(
          narrow: Column(children: [
            SizedBox(
                width: (screenWidth * .8),
                child: const RoundAssetImage(
                  fileName: 'hanbok',
                )),
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(mainMsg1, style: CustomTextTheme.mochiPopOneHuge),
                const SizedBox(height: 20),
                Text(mainMsg2, style: CustomTextTheme.mochiPopOne),
                const SizedBox(height: 100),
                const RoundAssetImage(
                  fileName: 'calling_woman',
                ),
                const SizedBox(height: 50),
                Text(subMsg1, style: CustomTextTheme.mplus1Regular),
                const SizedBox(height: 30),
                Text(subMsg2, style: CustomTextTheme.mplus1ExtraLight),
              ],
            ),
          ]),
          wide: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                      width: (screenWidth / 3.2),
                      child: const RoundAssetImage(
                        fileName: 'hanbok',
                      )),
                  const SizedBox(height: 200),
                ],
              ),
              const SizedBox(width: 100),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(mainMsg1, style: CustomTextTheme.mochiPopOneHuge),
                    const SizedBox(height: 20),
                    Text(mainMsg2, style: CustomTextTheme.mochiPopOne),
                    const SizedBox(height: 200),
                    Row(
                      children: [
                        SizedBox(
                            width: (screenWidth / 6),
                            child: const RoundAssetImage(
                              fileName: 'calling_woman',
                            )),
                        const SizedBox(width: 50),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(subMsg1,
                                  style: CustomTextTheme.mplus1Regular),
                              const SizedBox(height: 30),
                              Text(subMsg2,
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
        ));
  }
}
