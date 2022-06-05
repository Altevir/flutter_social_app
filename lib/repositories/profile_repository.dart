import 'package:flutter_social_app/models/profile.dart';

class ProfileRepository {
  static List<Profile> profiles = [
    Profile(
      imageAvatar: 'images/avatar1.png',
      name: 'Roger Franci',
      timeOnline: '10m ago',
      imageProfile: 'images/profile1.png',
      likes: 188,
      messages: 23,
      followers: 5,
    ),
    Profile(
      imageAvatar: 'images/avatar2.png',
      name: 'Desirae Torff',
      timeOnline: '30m ago',
      imageProfile: 'images/profile2.png',
      likes: 109,
      messages: 25,
      followers: 126,
    ),
    Profile(
      imageAvatar: 'images/avatar3.png',
      name: 'Amy',
      timeOnline: '20m ago',
      imageProfile: 'images/profile3.png',
      likes: 201,
      messages: 55,
      followers: 1099,
    ),
    Profile(
      imageAvatar: 'images/avatar3.png',
      name: 'Amy',
      timeOnline: '20m ago',
      imageProfile: 'images/profile4.png',
      likes: 219,
      messages: 630,
      followers: 421,
    ),
  ];
}
