import 'package:app/pages/login/login.dart';
import 'package:app/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 隐藏状态栏，底部按钮栏
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    //配置路由
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);

    return MaterialApp(
      theme: ThemeData(
          colorScheme: const ColorScheme(
              primary: Colors.deepOrangeAccent,
              //顶部栏栏颜色
              primaryVariant: Colors.white,
              secondary: Colors.green,
              background: Colors.white,
              error: Colors.red,
              brightness: Brightness.light,
              onBackground: Colors.pink,
              secondaryVariant: Colors.white,
              onError: Colors.yellow,
              onPrimary: Colors.white,
              //顶部栏字体颜色
              onSecondary: Colors.redAccent,
              onSurface: Colors.redAccent,
              surface: Colors.redAccent
              // all fields should have a value
              )),

      home: LoginPage(),
      //关联路由
      onGenerateRoute: router.generator,
    );
  }
}
