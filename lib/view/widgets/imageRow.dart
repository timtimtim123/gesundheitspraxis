import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';

import '../../controller/responsive.dart';
import '../../model/imageData.dart';

class ImageRow extends StatefulWidget {
  const ImageRow({super.key});

  @override
  State<ImageRow> createState() => _ImageRowState();
}

class _ImageRowState extends State<ImageRow> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  final List<String> imagesAssetPath = [
    "liege.jpg",
    "raum_sofa.jpg",
    "raum.jpg",
    "haus.jpg"
  ];

  @override
  void didChangeDependencies() {
    for (int i = 0; i < imagesAssetPath.length; i++) {
      precacheImage(
        ResizeImage(
          AssetImage('images/${imagesAssetPath[i]}'),
          policy: ResizeImagePolicy.fit,
          width: MediaQuery.of(context).size.width.round(),
          height: (MediaQuery.of(context).size.width * 0.625).round(),
        ),
        context,
      );
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context)) {
      return getSmallImages(context);
    }
    return getBigImages(context);
  }

  Widget getSmallImages(BuildContext context) {
    /*List<Widget> imageWidgets = [];
    for (int i = 0; i < imagesAssetPath.length; i++) {
      print(i);
      imageWidgets.add(
        Image(
          fit: BoxFit.fitWidth,
          //filterQuality: FilterQuality.high,
          image: ResizeImage(
            AssetImage('images/${imagesAssetPath[i]}'),
            policy: ResizeImagePolicy.fit,
            width: MediaQuery.of(context).size.width.round(),
            height: (MediaQuery.of(context).size.width * 0.625).round(),
          ),
        ),
      );
    }
    int i = -1;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
              aspectRatio: 16 / 10,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(milliseconds: 3200),
              //enlargeCenterPage: true,
              //enlargeFactor: 0.5,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: imagesAssetPath.map((assetPath) {
            i++;
            print(i);
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: double.maxFinite,
                  child: ChangeColors(
                    brightness: 0.2,
                    child: imageWidgets[i],
                  ),
                );
              },
            );
          }).toList(),
        ),ç/
     */
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
              aspectRatio: 16 / 10,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(milliseconds: 3200),
              //enlargeCenterPage: true,
              //enlargeFactor: 0.5,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: imagesAssetPath.map((assetPath) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: double.maxFinite,
                  child: /*ChangeColors(
                    ///used because images are normally shown darker then they are...
                    brightness: 0.2,
                    child: */
                      /*ImageFilter(
                    brightness: 0.1,
                    saturation: 0,
                    hue: 0,
                    child: */
                      Image(
                    fit: BoxFit.fitWidth,
                    //filterQuality: FilterQuality.high,
                    image: ResizeImage(
                      AssetImage('assets/images/$assetPath'),
                      policy: ResizeImagePolicy.fit,
                      width: MediaQuery.of(context).size.width.round(),
                      height:
                          (MediaQuery.of(context).size.width * 0.625).round(),
                    ),
                  ),
                  //),
                  //),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imagesAssetPath.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12,
                height: 12,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              DropShadow(
                blurRadius: 6,
                offset: CustomImageData.getOffset(),
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  child: Image(
                    fit: BoxFit.cover,
                    //filterQuality: //filterQuality.high,
                    image: ResizeImage(
                      AssetImage('images/liege.jpg'),
                      width: 226, //constraints.maxWidth.round(),
                      height: 180, //constraints.maxHeight.round(),
                    ),
                  ),
                ),
              ),
              DropShadow(
                blurRadius: 6,
                offset: CustomImageData.getOffset(),
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  child: Image(
                    fit: BoxFit.cover,
                    //filterQuality: //filterQuality.high,
                    image: ResizeImage(
                      AssetImage('images/raum_sofa.jpg'),
                      width: 226, //constraints.maxWidth.round(),
                      height: 180, //constraints.maxHeight.round(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              DropShadow(
                blurRadius: 6,
                offset: CustomImageData.getOffset(),
                child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: Image(
                      fit: BoxFit.cover,
                      //filterQuality: //filterQuality.high,
                      image: ResizeImage(
                        AssetImage('images/raum.jpg'),
                        width: 226, //constraints.maxWidth.round(),
                        height: 180, //constraints.maxHeight.round(),
                      ),
                    )),
              ),
              DropShadow(
                blurRadius: 6,
                offset: CustomImageData.getOffset(),
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  child: Image(
                    fit: BoxFit.cover,
                    //filterQuality: //filterQuality.high,
                    image: ResizeImage(
                      AssetImage('images/haus.jpg'),
                      width: 226, //maxWidth,
                      height: 180, //maxHeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget getBigImages(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Row(
        children: [
          Expanded(
            child: Image(
              fit: BoxFit.cover,
              //filterQuality: //filterQuality.high,
              image: ResizeImage(
                const AssetImage('images/liege.jpg'),
                width: (MediaQuery.of(context).size.width / 4).round(),
                height: (MediaQuery.of(context).size.width / 6).round(),
              ),
            ),
          ),
          Expanded(
            child: Image(
              fit: BoxFit.cover,
              //filterQuality: //filterQuality.high,
              image: ResizeImage(
                const AssetImage('images/raum.jpg'),
                width: (MediaQuery.of(context).size.width / 4).round(),
                height: (MediaQuery.of(context).size.width / 6).round(),
              ),
            ),
          ),
          Expanded(
            child: Image(
              fit: BoxFit.cover,
              //filterQuality: //filterQuality.high,
              image: ResizeImage(
                const AssetImage('images/raum_sofa.jpg'),
                width: (MediaQuery.of(context).size.width / 4).round(),
                height: (MediaQuery.of(context).size.width / 6).round(),
              ),
            ),
          ),
          Expanded(
            child: Image(
              fit: BoxFit.cover,
              //filterQuality: //filterQuality.high,
              image: ResizeImage(
                const AssetImage('images/haus.jpg'),
                allowUpscaling: true,
                width: (MediaQuery.of(context).size.width / 4).round(),
                height: (MediaQuery.of(context).size.width / 6).round(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget ImageFilter({brightness, saturation, hue, child}) {
  return ColorFiltered(
    colorFilter: ColorFilter.matrix(
      ColorFilterGenerator.brightnessAdjustMatrix(
        value: brightness,
      ),
    ),
    child: ColorFiltered(
      colorFilter: ColorFilter.matrix(
        ColorFilterGenerator.saturationAdjustMatrix(
          value: saturation,
        ),
      ),
      child: ColorFiltered(
        colorFilter: ColorFilter.matrix(
          ColorFilterGenerator.hueAdjustMatrix(
            value: hue,
          ),
        ),
        child: child,
      ),
    ),
  );
}

class ColorFilterGenerator {
  static List<double> hueAdjustMatrix({required double value}) {
    value = value * pi;

    if (value == 0) {
      return [
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ];
    }

    double cosVal = cos(value);
    double sinVal = sin(value);
    double lumR = 0.213;
    double lumG = 0.715;
    double lumB = 0.072;

    return List<double>.from(<double>[
      (lumR + (cosVal * (1 - lumR))) + (sinVal * (-lumR)),
      (lumG + (cosVal * (-lumG))) + (sinVal * (-lumG)),
      (lumB + (cosVal * (-lumB))) + (sinVal * (1 - lumB)),
      0,
      0,
      (lumR + (cosVal * (-lumR))) + (sinVal * 0.143),
      (lumG + (cosVal * (1 - lumG))) + (sinVal * 0.14),
      (lumB + (cosVal * (-lumB))) + (sinVal * (-0.283)),
      0,
      0,
      (lumR + (cosVal * (-lumR))) + (sinVal * (-(1 - lumR))),
      (lumG + (cosVal * (-lumG))) + (sinVal * lumG),
      (lumB + (cosVal * (1 - lumB))) + (sinVal * lumB),
      0,
      0,
      0,
      0,
      0,
      1,
      0,
    ]).map((i) => i.toDouble()).toList();
  }

  static List<double> brightnessAdjustMatrix({required double value}) {
    if (value <= 0) {
      value = value * 255;
    } else {
      value = value * 100;
    }

    if (value == 0) {
      return [
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ];
    }

    return List<double>.from(<double>[
      1,
      0,
      0,
      0,
      value,
      0,
      1,
      0,
      0,
      value,
      0,
      0,
      1,
      0,
      value,
      0,
      0,
      0,
      1,
      0
    ]).map((i) => i.toDouble()).toList();
  }

  static List<double> saturationAdjustMatrix({required double value}) {
    value = value * 100;

    if (value == 0) {
      return [
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ];
    }

    double x =
        ((1 + ((value > 0) ? ((3 * value) / 100) : (value / 100)))).toDouble();
    double lumR = 0.3086;
    double lumG = 0.6094;
    double lumB = 0.082;

    return List<double>.from(<double>[
      (lumR * (1 - x)) + x,
      lumG * (1 - x),
      lumB * (1 - x),
      0,
      0,
      lumR * (1 - x),
      (lumG * (1 - x)) + x,
      lumB * (1 - x),
      0,
      0,
      lumR * (1 - x),
      lumG * (1 - x),
      (lumB * (1 - x)) + x,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
    ]).map((i) => i.toDouble()).toList();
  }
}
