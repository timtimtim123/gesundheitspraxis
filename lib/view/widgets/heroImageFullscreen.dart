import 'package:flutter/material.dart';

class HeroImageFullScreen extends StatefulWidget {
  const HeroImageFullScreen({super.key, required this.isSmallScreen});

  final bool isSmallScreen;

  @override
  State<HeroImageFullScreen> createState() => _HeroImageFullScreenState();
}

class _HeroImageFullScreenState extends State<HeroImageFullScreen> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Hero(
              tag: widget.isSmallScreen
                  ? 'kartenlegung'
                  : 'kartenlegungSmallScreen',
              child: Image(
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                image: ResizeImage(
                  const AssetImage('images/kartenlegung.jpeg'),
                  width: MediaQuery.of(context).size.width.round(),
                  height: MediaQuery.of(context).size.height.round(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
