import 'package:flutter/material.dart';
import 'package:flutter_social_app/widgets/home_page/card_glass.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/background.png',
            fit: BoxFit.cover,
          ),
          const CardGlass(),
        ],
      ),
    );
  }
}
