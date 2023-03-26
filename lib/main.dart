import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/RouteGenerator.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
                initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        home: HomePage());
  }
}