import 'package:flutter/material.dart';

class HeaderSearch extends StatefulWidget {
  const HeaderSearch({Key? key}) : super(key: key);

  @override
  _HeaderSearchState createState() => _HeaderSearchState();
}

class _HeaderSearchState extends State<HeaderSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60, left: 24, right: 24),
      height: 52,
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xffF4F4F4),
      ),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          fontFamily: 'SFProDisplay',
        ),
        decoration: InputDecoration(
          hintText: 'Discover...',
          border: InputBorder.none,
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'images/search.png',
              height: 24,
              width: 24,
            ),
          ),
        ),
      ),
    );
  }
}
