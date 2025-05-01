import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/responsive.dart';
import '../../model/textTheme.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  static final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(47.46215402772178, 8.32194538945796),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = false;
    if (ResponsiveWidget.isSmallScreen(context)) {
      isSmallScreen = true;
    }

    return PointerInterceptor(
      child: Column(
        children: [
          isSmallScreen
              ? const SizedBox(height: 15)
              : const SizedBox(height: 30),
          Text(
            'Standort',
            style: isSmallScreen
                ? CustomTextTheme.headlineSmall
                : CustomTextTheme.headlineLarge,
          ),

          ///isSmallDevice ? const SizedBox(height: 15) : const SizedBox(height: 30),
          const SizedBox(height: 40),
          if (isSmallScreen) ...[
            getDataSquaresSmallScreen(),
          ] else ...[
            getDataSquaresLargeScreen(context),
          ],
          const SizedBox(height: 30),
          SizedBox(
            height: isSmallScreen ? 250 : 400,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              markers: {
                const Marker(
                  markerId: MarkerId('0'),
                  position: LatLng(47.46215402772178, 8.32194538945796),
                ),
              },
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          SizedBox(height: isSmallScreen ? 10 : 18),
          Align(
            alignment: Alignment.centerRight,
            child: MaterialButton(
              onPressed: launchGoogleMaps,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              color: const Color(0xFF2D4957),
              elevation: 8,
              height: isSmallScreen ? 40 : 55,
              minWidth: isSmallScreen ? 190 : 250,
              child: Text(
                'In Google Maps öffnen',
                style: isSmallScreen
                    ? CustomTextTheme.labelLarge
                        .copyWith(color: Colors.white, fontSize: 15)
                    : CustomTextTheme.labelLarge.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> launchGoogleMaps() async {
    Uri url = Uri.parse(
        'https://www.google.com/maps/search/?api=1&query=47.46215402772178, 8.32194538945796');

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      debugPrint('Could not open the map.');
    }
  }

  Widget getDataSquaresSmallScreen() {
    return Column(
      children: [
        Container(
          height: 140,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaIcon(
                FontAwesomeIcons.mapLocation,
                size: 40,
                color: Colors.blueGrey.shade900,
              ),
              const SelectableText(
                'Alberich Zwyssigstrasse 36\n5430 Wettingen\nZugang und Parkplatz: Sonneggstrasse',
                style: CustomTextTheme.labelSmallLocation,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 110,
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.phone,
                        size: 40,
                        color: Colors.blueGrey.shade900,
                      ),
                      const SelectableText(
                        '079 728 16 56',
                        style: CustomTextTheme.labelSmallLocation,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Container(
                  height: 110,
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.envelope,
                        size: 40,
                        color: Colors.blueGrey.shade900,
                      ),
                      const SelectableText(
                        'info@rueck-grad.ch',
                        style: CustomTextTheme.labelSmallLocation,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget getDataSquaresLargeScreen(BuildContext context) {
    return SizedBox(
      width:
          ResponsiveWidget.isVeryLargeScreen(context) ? 1040 : double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FaIcon(
                    FontAwesomeIcons.mapLocation,
                    size: 60,
                    color: Colors.blueGrey.shade900,
                  ),
                  const SelectableText(
                    'Alberich Zwyssigstrasse 36\n5430 Wettingen\nZugang und Parkplatz: Sonneggstrasse',
                    style: CustomTextTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FaIcon(
                    FontAwesomeIcons.phone,
                    size: 60,
                    color: Colors.blueGrey.shade900,
                  ),
                  const SelectableText(
                    '079 728 16 56',
                    style: CustomTextTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FaIcon(
                    FontAwesomeIcons.envelope,
                    size: 60,
                    color: Colors.blueGrey.shade900,
                  ),
                  const SelectableText(
                    'info@rueck-grad.ch',
                    style: CustomTextTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
