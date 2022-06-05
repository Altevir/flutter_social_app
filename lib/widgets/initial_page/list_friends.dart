import 'package:flutter/material.dart';
import 'package:flutter_social_app/repositories/friend_repository.dart';

class ListFriends extends StatefulWidget {
  const ListFriends({Key? key}) : super(key: key);

  @override
  _ListFriends createState() => _ListFriends();
}

class _ListFriends extends State<ListFriends> {
  final friends = FriendRepository.friends;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 364,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 45, bottom: 15),
            child: Text(
              'Add Friends',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'SFProDisplay',
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(height: 20),
              itemCount: friends.length,
              itemBuilder: (BuildContext context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                            child: Image.asset(
                              friends[index].image,
                              height: 64,
                              width: 64,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Flexible(
                            child: ListTile(
                              title: Text(
                                friends[index].name,
                                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                              ),
                              subtitle: Text(
                                '${friends[index].city}, ${friends[index].country}',
                                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Add',
                              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xffFA8D3E),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
