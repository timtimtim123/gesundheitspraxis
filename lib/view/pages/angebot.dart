import 'package:flutter/material.dart';

import '../../controller/top_bar_contents.dart';
import '../../model/pageViewContent.dart';
import '../widgets/bottom_bar.dart';

class Angebot extends StatefulWidget {
  const Angebot(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  State<Angebot> createState() => _AngebotState();
}

class _AngebotState extends State<Angebot> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 82),
                ConstrainedBox(
                  constraints:
                      BoxConstraints(minHeight: screenSize.height - 82),
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
                            padding: EdgeInsets.only(
                              top: 70,
                              left: screenSize.width / 5,
                              right: screenSize.width / 5,
                            ),
                            child: PageViewContent.getContentLargeDevice(
                                context)[widget.index],
                          ),
                          const SizedBox(height: 50),
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
          PreferredSize(
            preferredSize: Size(screenSize.width, 1000),
            child: const TopBarContents(1),
          ),
        ],
      ),
    );
  }
}
