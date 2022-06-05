import 'package:flutter/material.dart';

import '../../repositories/profile_repository.dart';
import 'card_profile_item.dart';

class ListCardItems extends StatefulWidget {
  const ListCardItems({Key? key}) : super(key: key);

  @override
  _ListCardItemsState createState() => _ListCardItemsState();
}

class _ListCardItemsState extends State<ListCardItems> {
  final profiles = ProfileRepository.profiles;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NotificationListener(
        child: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            return CardProfileItem(profile: profiles[index]);
          },
          separatorBuilder: (_, __) => const SizedBox(height: 20),
          itemCount: profiles.length,
        ),
      ),
    );
  }
}
