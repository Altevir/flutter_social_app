import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_social_app/routes/route.dart' as route;

class CardGlass extends StatefulWidget {
  const CardGlass({Key? key}) : super(key: key);

  @override
  _CardGlassState createState() => _CardGlassState();
}

class _CardGlassState extends State<CardGlass> {
  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;
    final smallMobile = sizeHeight < 800;

    debugPrint(sizeHeight.toString());

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: SizedBox(
                  width: sizeWidth,
                  height: sizeHeight * 0.30,
                ),
              ),
              Container(
                width: sizeWidth,
                height: smallMobile ? sizeHeight * 0.40 : sizeHeight * 0.32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.grey.shade100.withOpacity(0.3),
                  border: Border.all(width: 1, color: Colors.white.withOpacity(0.2)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      const Text(
                        'Stay Connected',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Get connected and discover more\npeople that have the same interest\nand hobbies near you!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SFProDisplay',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Expanded(
                        child: AnimatedSmoothIndicator(
                          activeIndex: 2,
                          count: 3,
                          effect: const ExpandingDotsEffect(
                            activeDotColor: Color(0xffFA8D3E),
                            spacing: 5,
                            dotHeight: 9,
                            dotWidth: 9,
                            dotColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: sizeWidth,
                        height: 54,
                        child: ElevatedButton(
                          onPressed: () => Navigator.pushNamed(
                            context,
                            route.initialPage,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFA8D3E),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Get Started!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'SFProDisplay',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
