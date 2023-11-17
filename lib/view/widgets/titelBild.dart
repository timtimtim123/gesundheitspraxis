import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import '../../controller/responsive.dart';
import '../../model/textTheme.dart';

class TitelBild extends StatelessWidget {
  final ui.Size _screenSize;

  TitelBild(this._screenSize, {super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmartphoneScreen =
        ResponsiveWidget.isSmartphoneScreen(context);
    return SizedBox(
      height: _screenSize.height,
      child: Stack(
        children: [
          _buildParallaxBackground(context),
          _buildGradient(),
          _buildTitleAndSubtitle(context, isSmartphoneScreen),
        ],
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ImageRenderer(
          alt: 'Mohnblumenfeld',
          child: Image.asset(
            'images/mohnfeld.jpeg',
            fit: BoxFit.cover,
            height: _screenSize.height,
            cacheHeight: (constraints.maxHeight *
                    MediaQuery.of(context).devicePixelRatio)
                .round(),
            //cacheHeight: _screenSize.height.round(),
            //cacheWidth: constraints.maxWidth.round(),
          ),
        );
      },
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
                child: TextRenderer(
                  child: Text(
                    'Gesundheitspraxis',
                    style: TextStyle(
                      fontFamily: 'Kalam',
                      color: Colors.black,
                      fontSize: isSmartphoneScreen ? 35 : 100,
                    ),
                  ),
                ),
              ),
              BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: TextRenderer(
                  child: Text(
                    'Gesundheitspraxis',
                    style: TextStyle(
                      fontFamily: 'Kalam',
                      color: Colors.white,
                      fontSize: isSmartphoneScreen ? 35 : 100,
                    ),
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
                child: TextRenderer(
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
              ),
              BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: TextRenderer(
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
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 2,
                left: 2,
                child: TextRenderer(
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
              ),
              BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: TextRenderer(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
