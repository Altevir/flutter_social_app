import 'package:flutter/material.dart';
import 'package:flutter_social_app/widgets/initial_page/list_friends.dart';

import '../../models/profile.dart';

class CardProfileItem extends StatefulWidget {
  final Profile profile;
  const CardProfileItem({Key? key, required this.profile}) : super(key: key);

  @override
  _CardProfileItemState createState() => _CardProfileItemState();
}

class _CardProfileItemState extends State<CardProfileItem> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 18,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: SizedBox(
        height: 408,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 2),
              child: SizedBox(
                height: 72,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(widget.profile.imageAvatar),
                    const SizedBox(width: 10),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.profile.name,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            widget.profile.timeOnline,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    PopupMenuButton(
                      icon: const Icon(
                        Icons.more_vert,
                        color: Color(0xffA3A7AE),
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: ListTile(
                            title: const Text('Add Friend'),
                            onTap: () {
                              Navigator.pop(context);
                              showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                                ),
                                context: context,
                                builder: (context) {
                                  return const ListFriends();
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              widget.profile.imageProfile,
              height: 272,
              fit: BoxFit.fill,
            ),
            Expanded(
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'images/heart.png',
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.profile.likes.toString(),
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, fontFamily: 'SFProDisplay'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/message-circle.png',
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.profile.messages.toString(),
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, fontFamily: 'SFProDisplay'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/users.png',
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.profile.followers.toString(),
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, fontFamily: 'SFProDisplay'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
