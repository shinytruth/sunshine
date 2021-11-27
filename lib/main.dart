import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:sunshine/routes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  const env = String.fromEnvironment('ENV');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 여기 입력된 제목이 Web 브라우저 탭의 제목이 된다.
      title: "aJoara - Awaken Story Instinct",
      scrollBehavior: MyCustomScrollBehavior(),
      builder: (context, child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaleFactor: 1.0), //시스템 폰트 크기 적용 안되게
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      // 웹의 경우 리뉴얼 이전 앵귤러 웹 당시에 /main 경로가 root 경로였기 때문에 별도 지정해준다.
      initialRoute: Routes.root,
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
