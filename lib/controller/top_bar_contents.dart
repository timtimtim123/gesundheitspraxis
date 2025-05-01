import 'package:flutter/material.dart';

import '../model/menu_angebote.dart';
import '../model/textTheme.dart';
import '../view/pages/angebot.dart';
import '../view/pages/homePage.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  const TopBarContents(this.opacity, {super.key});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents>
    with SingleTickerProviderStateMixin {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  bool isOpen = false;
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 150),
  );

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Stack(
        //alignment: Alignment.center,
        fit: StackFit.passthrough,
        //fit: StackFit.expand,
        children: [
          _buildGradient(),
          Container(
            height: 82,
            width: double.infinity,
            color: Colors.blueGrey.shade900.withOpacity(widget.opacity),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 16),
                child: InkWell(
                  child: Image.asset(
                    'images/icon_massage_white.png',
                    color: Colors.white,
                    scale: 2.7,
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 82,
                child: InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  },
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  ),
                  child: SizedBox(
                    width: 131,
                    child: Column(
                      children: [
                        Text(
                          'Willkommen',
                          style:
                              CustomTextTheme.getMenuTextStyle(_isHovering, 0),
                        ),
                        const SizedBox(height: 5),
                        getHoverLine(0),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: screenSize.width / 13),
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: SizedBox(
                  width: 335,
                  child: InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () {},
                    child: getAngebote(context),
                  ),
                ),
              ),
              const SizedBox(width: 10),

              ///SizedBox(width: screenSize.width / 13),
              Padding(
                padding: const EdgeInsets.only(top: 26),
                child: InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  },
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Angebot(10),
                    ),
                  ),
                  child: SizedBox(
                    width: 113,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Über mich',
                          style:
                              CustomTextTheme.getMenuTextStyle(_isHovering, 2),
                        ),
                        const SizedBox(height: 5),
                        getHoverLine(2),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: screenSize.width / 13),
              Padding(
                padding: const EdgeInsets.only(top: 26, right: 40),
                child: InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[3] = true : _isHovering[3] = false;
                    });
                  },
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Angebot(11),
                    ),
                  ),
                  child: SizedBox(
                    width: 66,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Preise',
                          style:
                              CustomTextTheme.getMenuTextStyle(_isHovering, 3),
                        ),
                        const SizedBox(height: 5),
                        getHoverLine(3),
                      ],
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

  Widget _buildGradient() {
    return SizedBox(
      height: 82,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.6), Colors.transparent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }

  Widget getAngebote(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: SingleChildScrollView(
        child: ExpansionTile(
          backgroundColor: Colors.black.withOpacity(0.73),
          onExpansionChanged: (changed) {
            setState(() => isOpen = changed);
            if (isOpen) {
              _controller.forward(from: 0.0);
            } else {
              _controller.reverse(from: 0.5);
            }
          },
          title: Row(
            children: [
              SizedBox(
                width: 111,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Angebote',
                      style: CustomTextTheme.getMenuTextStyle(_isHovering, 1),
                    ),
                    const SizedBox(height: 5),
                    getHoverLine(1),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: RotationTransition(
                  turns: Tween(begin: 0.0, end: 0.5).animate(_controller),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: _isHovering[1]
                        ? Colors.white
                        : Colors.white.withOpacity(0.8),
                  ),
                ),
              ),
            ],
          ),
          trailing: const SizedBox(),
          children: MenuAngebot.getMenu(context),
        ),
      ),
    );
  }

  Widget getHoverLine(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Visibility(
        maintainAnimation: true,
        maintainState: true,
        maintainSize: true,
        visible: _isHovering[index],
        child: Container(
          height: 2,
          width: double.infinity,
          color: Colors.white,
        ),
      ),
    );
  }
}
