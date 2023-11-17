import 'package:flutter/material.dart';

class HeroImageFullScreen extends StatelessWidget {
  const HeroImageFullScreen({super.key});

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
              tag: 'kartenlegung',
              child: Image.asset(
                'images/kartenlegung.jpeg',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
