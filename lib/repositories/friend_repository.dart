import 'package:flutter_social_app/models/friend.dart';

class FriendRepository {
  static List<Friend> friends = [
    Friend(
      name: 'Erin Gouse',
      city: 'Melbourne',
      country: 'Australia',
      image: 'images/friend1.png',
    ),
    Friend(
      name: 'Ruben Press',
      city: 'Sydnei',
      country: 'Australia',
      image: 'images/friend2.png',
    ),
    Friend(
      name: 'Jordyn Carder',
      city: 'Adelaide',
      country: 'Australia',
      image: 'images/friend3.png',
    ),
  ];
}
