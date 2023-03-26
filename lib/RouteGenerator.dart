
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/third.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/screens/score.dart';
import 'package:flutter_application_1/screens/first.dart';
import 'package:flutter_application_1/screens/second.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case 'first':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case 'second':
        return MaterialPageRoute(builder: (_) => SecondPage(args));
      case 'third':
        return MaterialPageRoute(builder: (_) => ThirdPage(args));
      default:
        return MaterialPageRoute(builder: (_) => ScorePage(args));
    }
  }
}