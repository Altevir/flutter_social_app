import 'package:flutter/material.dart';
import 'package:flutter_social_app/pages/home_page.dart';
import 'package:flutter_social_app/pages/initial_page.dart';

const String homePage = 'home';
const String initialPage = 'initial';

class RouteGenerator {
  static Route<dynamic> controller(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());

      case initialPage:
        return MaterialPageRoute(builder: (context) => const InitialPage());

      default:
        throw Exception('A rota ${settings.name} não existe!');
    }
  }
}
