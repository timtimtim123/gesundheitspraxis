import 'package:flutter/material.dart';
import 'package:gesundheitspraxis_website/view/pages/angebot_mobile.dart';
import 'package:gesundheitspraxis_website/view/pages/homePage.dart';

import '../model/menu_angebote.dart';
import '../model/textTheme.dart';

class ExploreDrawer extends StatefulWidget {
  const ExploreDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<ExploreDrawer> createState() => _ExploreDrawerState();
}

class _ExploreDrawerState extends State<ExploreDrawer>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 150),
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 322,
      backgroundColor: Colors.black.withOpacity(0.85),
      child: ListView(
        padding: const EdgeInsets.all(13),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 40,
            child: Image.asset(
              'images/massage.png',
              color: Colors.white,
              alignment: Alignment.topLeft,
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 50,
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              ),
              child:
                  const Text('Willkommen', style: CustomTextTheme.mobileMenu),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Divider(
              thickness: 0.5,
              color: Colors.white70,
            ),
          ),
          getAngebote(context),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Divider(
              thickness: 0.5,
              color: Colors.white70,
            ),
          ),
          Container(
            height: 50,
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AngebotMobile(9),
                ),
              ),
              child: const Text(
                'Über Mich',
                style: CustomTextTheme.mobileMenu,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Divider(
              thickness: 0.5,
              color: Colors.white70,
            ),
          ),
          Container(
            height: 50,
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AngebotMobile(10),
                ),
              ),
              child: const Text(
                'Preise',
                style: CustomTextTheme.mobileMenu,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Divider(
              thickness: 0.5,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  Widget getAngebote(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(0),
        onExpansionChanged: (changed) {
          setState(() => isOpen = changed);
          if (isOpen) {
            _controller.forward(from: 0.0);
          } else {
            _controller.reverse(from: 0.5);
          }
        },
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Angebote', style: CustomTextTheme.mobileMenu),
              const SizedBox(width: 8),
              RotationTransition(
                turns: Tween(begin: 0.0, end: 0.5).animate(_controller),
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        trailing: const SizedBox(),
        children: MenuAngebot.getMenuSmallDevice(context),
      ),
    );
  }
}
