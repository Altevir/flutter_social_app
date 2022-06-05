class Profile {
  String imageAvatar;
  String name;
  String timeOnline;
  String imageProfile;
  int? likes;
  int? messages;
  int? followers;

  Profile({
    required this.imageAvatar,
    required this.name,
    required this.timeOnline,
    required this.imageProfile,
    this.likes,
    this.messages,
    this.followers,
  });
}
