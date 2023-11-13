import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../controller/responsive.dart';
import '../../model/textTheme.dart';
import '../parallaxFlowDelegate.dart';

class TitelBild extends StatelessWidget {
  final ui.Size _screenSize;

  TitelBild(this._screenSize, {super.key});

  final GlobalKey _backgroundImageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final bool isSmartphoneScreen =
        ResponsiveWidget.isSmartphoneScreen(context);
    return SizedBox(
      height: _screenSize.height,
      child: Stack(
        // fit: StackFit.expand,
        children: [
          _buildParallaxBackground(context),
          _buildGradient(),
          _buildTitleAndSubtitle(context, isSmartphoneScreen),
        ],
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        Image.asset(
          'images/mohnfeld.jpeg',
          key: _backgroundImageKey,
          fit: BoxFit.cover,
          height: _screenSize.height,
        ),
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.9, 1],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle(BuildContext context, bool isSmartphoneScreen) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Positioned(
                top: 2,
                left: 2,
                child: Text(
                  'Gesundheitspraxis',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    color: Colors.black,
                    fontSize: isSmartphoneScreen ? 35 : 100,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Text(
                  'Gesundheitspraxis',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    color: Colors.white,
                    fontSize: isSmartphoneScreen ? 35 : 100,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 2,
                left: 2,
                child: Text(
                  'Dipl. Therapeutin',
                  style: isSmartphoneScreen
                      ? const TextStyle(
                          fontFamily: 'Kalam',
                          fontSize: 26,
                        )
                      : CustomTextTheme.headlineLarge,
                ),
              ),
              BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Text(
                  'Dipl. Therapeutin',
                  style: isSmartphoneScreen
                      ? const TextStyle(
                          fontFamily: 'Kalam',
                          color: Colors.white,
                          fontSize: 26,
                        )
                      : CustomTextTheme.headlineLarge
                          .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 2,
                left: 2,
                child: Text(
                  'Brigitte Müller',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: isSmartphoneScreen ? 17.5 : 35,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Text(
                  'Brigitte Müller',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: isSmartphoneScreen ? 17.5 : 35,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
