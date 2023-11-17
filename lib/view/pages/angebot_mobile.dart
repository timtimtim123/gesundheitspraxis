import 'package:flutter/material.dart';
import 'package:gesundheitspraxis_website/model/pageViewContent.dart';

import '../../controller/drawer.dart';
import '../widgets/bottom_bar.dart';

class AngebotMobile extends StatefulWidget {
  const AngebotMobile(this.index, {super.key});

  final int index;

  @override
  State<AngebotMobile> createState() => _AngebotMobileState();
}

class _AngebotMobileState extends State<AngebotMobile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 150),
  );

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const ExploreDrawer(),
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 56),
                ConstrainedBox(
                  constraints:
                      BoxConstraints(minHeight: screenSize.height - 56),
                  child: IntrinsicHeight(
                    child: Container(
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: PageViewContent.getContentSmallDevice(
                                _animationController, context)[widget.index],
                          ),
                          const SizedBox(height: 30),
                          const Spacer(),
                          const BottomBar(withImpressum: true),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 56,
            child: AppBar(
              backgroundColor: Colors.blueGrey.shade900,
              elevation: 0,
              title: const Text(
                'Gesundheitspraxis',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Kalam',
                  letterSpacing: 2,
                ),
              ),
              actions: [
                Image.asset(
                  'images/massage.png',
                  color: Colors.white,
                ),
              ],
              iconTheme: const IconThemeData(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
