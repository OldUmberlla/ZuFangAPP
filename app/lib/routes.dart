import 'package:app/pages/error/not_found.dart';
import 'package:app/pages/home/home.dart';
import 'package:app/pages/login/login.dart';
import 'package:app/pages/register/register.dart';
import 'package:app/pages/room_detail/room_detail.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'pages/home/recommend.dart';

class Routes {
  //定义路由名称
  static String homeRoute = "/home";

  //登陆页
  static String loginRoute = "/login";

  //传参数的路由 @roomId
  static String roomDetail = "/room/:roomId";

  //注册页
  static String registerRoute = "/register";

  //推荐页
  static String recommendRoute = "/recommend";

//定义路由处理函数
  static var _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return HomePage();
  });

  static var _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return LoginPage();
  });

  static var _registerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RegisterPage();
  });

  static var _recommendRouteHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RecommendPage();
  });

  static var _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return NotFoundPage();
  });

  static var _roomDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RoomDetailPage(roomId: params['roomId']![0]);
  });

  //关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(homeRoute, handler: _homeHandler);
    router.define(loginRoute, handler: _loginHandler);
    router.define(registerRoute, handler: _registerHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.define(recommendRoute, handler: _recommendRouteHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
