import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';

import '../../controller/responsive.dart';
import '../../model/imageData.dart';

class ImageRow extends StatelessWidget {
  const ImageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isSmartphoneScreen(context) ||
        ResponsiveWidget.isSmallScreen(context)) {
      return getSmallImages(context);
    }
    return getBigImages(context);
  }

  Widget getSmallImages(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              DropShadow(
                blurRadius: 6,
                offset: CustomImageData.getOffset(),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Image.asset(
                    'images/liege.jpg',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              DropShadow(
                blurRadius: 6,
                offset: CustomImageData.getOffset(),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Image.asset(
                    'images/raum_sofa.jpg',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
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
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Image.asset(
                    'images/raum.jpg',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              DropShadow(
                blurRadius: 6,
                offset: CustomImageData.getOffset(),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Image.asset(
                    'images/haus.jpg',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
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
            child: Image.asset(
              'images/liege.jpg',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Image.asset(
              'images/raum.jpg',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Image.asset(
              'images/raum_sofa.jpg',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Image.asset(
              'images/haus.jpg',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
