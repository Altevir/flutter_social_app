import 'package:flutter/material.dart';
import 'package:flutter_social_app/repositories/profile_repository.dart';
import 'package:flutter_social_app/widgets/initial_page/header_actions.dart';
import 'package:flutter_social_app/widgets/initial_page/header_search.dart';
import 'package:flutter_social_app/widgets/initial_page/list_card_item.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  final profiles = ProfileRepository.profiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          HeaderSearch(),
          HeaderActions(),
          ListCardItems(),
        ],
      ),
    );
  }
}
