import 'package:flutter/material.dart';
import 'package:flutter_social_app/pages/home_page.dart';
import 'package:flutter_social_app/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SFProDisplay',
      ),
      onGenerateRoute: RouteGenerator.controller,
      initialRoute: 'home',
      home: const HomePage(),
    );
  }
}
