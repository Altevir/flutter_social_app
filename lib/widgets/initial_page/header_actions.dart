import 'package:flutter/material.dart';

class HeaderActions extends StatefulWidget {
  const HeaderActions({Key? key}) : super(key: key);

  @override
  _HeaderActionsState createState() => _HeaderActionsState();
}

class _HeaderActionsState extends State<HeaderActions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 24, right: 24, bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('images/bell.png', height: 24),
          const SizedBox(width: 15),
          Image.asset('images/user.png', height: 24),
          const SizedBox(width: 15),
          Image.asset('images/message-circle.png', height: 24),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(4),
            height: 44,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color(0xffFA8D3E),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: ClipOval(
                    child: Image.asset(
                      'images/avatar.png',
                      fit: BoxFit.cover,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Skylar Vaccaro',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
