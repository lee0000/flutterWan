import 'package:flutter/material.dart';
import 'package:wan_flutter/pages/about_page.dart';
import 'package:wan_flutter/pages/home_page.dart';
import 'package:wan_flutter/pages/login_page.dart';
import 'package:wan_flutter/pages/welcome_page.dart';

// 配置路由
final routes = {
  "/": (context) => const WelcomePage(),
  "/about": (context) => const AboutPage(),
  "/login": (context) => const LoginPage(),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
// 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name] as Function;
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
      MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};