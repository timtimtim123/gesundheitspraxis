import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../controller/responsive.dart';
import '../../model/textTheme.dart';

class TitelBild extends StatelessWidget {
  TitelBild(this._screenSize, {super.key});

  //late Size _screenSize;
  //final ResizeImage imageWidget;
  final ui.Size _screenSize;

  @override
  Widget build(BuildContext context) {
    //_screenSize = MediaQuery.of(context).size;
    final bool isSmallScreen = ResponsiveWidget.isSmallScreen(context);
    return SizedBox(
      height: _screenSize.height,
      child: Stack(
        //fit: StackFit.expand,
        children: [
          _buildParallaxBackground(context),
          _buildGradient(),
          //_buildImageAndGradient(),
          _buildTitleAndSubtitle(context, isSmallScreen),
        ],
      ),
    );
  }

  /*Widget _buildImageAndGradient() {
    //compressFile(File(path));
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.9, 1],
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: imageWidget,
          ),
        ),
      ),
    );
  }*/

  Widget _buildParallaxBackground(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Image.asset(
          'images/mohnfeld.jpeg',
          fit: BoxFit.cover,
          height: _screenSize.height,
          cacheHeight:
              (constraints.maxHeight * MediaQuery.of(context).devicePixelRatio)
                  .round(),
          //cacheHeight: _screenSize.height.round(),
          //cacheWidth: constraints.maxWidth.round(),
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

/*
  Future<XFile?> compressFile(File file) async {
    final filePath = file.absolute.path;

    // Create output file path
    // eg:- "Volume/VM/abcd_out.jpeg"
    final lastIndex = filePath.lastIndexOf(new RegExp(r'.jp'));
    final splitted = filePath.substring(0, (lastIndex));
    final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      outPath,
      quality: 5,
    );

    return result;
  }

  Future<File> getImageFileFromAssets(String path) async {
    final byteData = await rootBundle.load('assets/$path');

    ///final file = File('${(await getTemporaryDirectory()).path}/$path');
    await file.create(recursive: true);
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file;
  }
*/
  Widget _buildTitleAndSubtitle(BuildContext context, bool isSmallScreen) {
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
                    fontSize: isSmallScreen ? 35 : 100,
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
                    fontSize: isSmallScreen ? 35 : 100,
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
                  style: isSmallScreen
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
                  style: isSmallScreen
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
                    fontSize: isSmallScreen ? 17.5 : 35,
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
                    fontSize: isSmallScreen ? 17.5 : 35,
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
