import 'package:flutter/material.dart';

import '../../controller/drawer.dart';
import '../../controller/responsive.dart';
import '../../controller/top_bar_contents.dart';
import '../../model/pageViewContent.dart';
import '../../model/textTheme.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/contactform.dart';
import '../widgets/imageRow.dart';
import '../widgets/location.dart';
import '../widgets/titelBild.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    final bool isSmartphoneScreen =
        ResponsiveWidget.isSmartphoneScreen(context);
    final bool isSmallScreen = ResponsiveWidget.isSmallScreen(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer:
          (isSmartphoneScreen || isSmallScreen) ? const ExploreDrawer() : null,
      appBar: isSmartphoneScreen || isSmallScreen
          ? AppBar(
              backgroundColor: Colors.blueGrey.shade900.withOpacity(_opacity),
              elevation: 0,
              title: Text(
                'Gesundheitspraxis',
                style: TextStyle(
                  color: Colors.white.withOpacity(_opacity),
                  fontSize: 20,
                  fontFamily: 'Kalam',
                  letterSpacing: 2,
                ),
              ),
              iconTheme: const IconThemeData(color: Colors.white),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity),
            ),
      body: /*WebSmoothScroll(
        controller: _scrollController,
        scrollOffset: 165,
        child: Scrollbar(
          controller: _scrollController,
          child:*/
          SingleChildScrollView(
        //physics: const NeverScrollableScrollPhysics(),
        controller: _scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TitelBild(screenSize),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.orange[900]!,
                    Colors.yellow[600]!,
                    Colors.orange[900]!,
                  ],
                ),
              ),
              //height: (isSmartphoneScreen || isSmallScreen) ? null : 1900,
              child: (isSmartphoneScreen || isSmallScreen)
                  ? getSmallScreen()
                  : getBodyLargeScreen(screenSize, context),
            ),
            const BottomBar(withImpressum: true),
          ],
        ),
        /*),
        ),*/
      ),
    );
  }

  Widget getBodyLargeScreen(Size screenSize, BuildContext context) {
    bool isVeryLargeScreen = ResponsiveWidget.isVeryLargeScreen(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        /*Container(
          height: 1150,
          padding: const EdgeInsets.only(top: 70, left: 50, right: 150),
          child: const SideMenuWidget(),
        ),*/
        Container(
          alignment: Alignment.center,
          width: screenSize.width / 1.5,
          padding: EdgeInsets.only(top: isVeryLargeScreen ? 80 : 60),
          child: PageViewContent.getContentLargeDevice(context).first,
        ),
        SizedBox(height: isVeryLargeScreen ? 80 : 30),
        const SizedBox(
          height: 400,
          child: ImageRow(),
        ),
        SizedBox(height: isVeryLargeScreen ? 150 : 50),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          width: isVeryLargeScreen ? 1200 : screenSize.width / 1.5,
          child: const ContactForm(),
        ),
        SizedBox(height: isVeryLargeScreen ? 150 : 100),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          width: screenSize.width / 1.5,
          child: const Location(),
        ),
        const SizedBox(height: 60),
      ],
    );
  }

  Widget getSmallScreen() {
    return const Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Willkommen auf der Webseite meiner Gesundheitspraxis mit Schwerpunkt auf die Massage und Rückentherapie.',
                style: CustomTextTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              Text(
                'Vieles was wir in unserem Leben erfahren, lastet nicht nur auf unseren Schultern, sondern wirkt auf unseren gesamten Körper.\nUnd im Zentrum steht dabei unser Rücken.',
                style: CustomTextTheme.bodySmall,
              ),
              SizedBox(height: 15),
              Text(
                'Die Komplexität der Zusammenhänge unseres Bewegungsapparates erfordern unterschiedlichste Behandlungs- und Therapieansätze.',
                style: CustomTextTheme.bodySmall,
              ),
              SizedBox(height: 15),
              Text(
                'Ich würde mich daher sehr freuen, wenn ich, angepasst an Deine persönlichen Bedürfnisse, Dir eine individuelle Therapiebehandlung anbieten dürfte.',
                style: CustomTextTheme.bodySmall,
              ),
              SizedBox(height: 15),
              Text(
                'Brigitte Müller',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        ImageRow(),
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.all(15),
          child: ContactForm(),
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.all(15),
          child: Location(),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
