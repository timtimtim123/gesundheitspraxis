import 'package:flutter/material.dart';

import '../../controller/top_bar_contents.dart';
import '../../model/pageViewContent.dart';
import '../widgets/bottom_bar.dart';

class Preise extends StatefulWidget {
  const Preise({Key? key}) : super(key: key);

  @override
  State<Preise> createState() => _PreiseState();
}

class _PreiseState extends State<Preise> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 1000),
          child: const TopBarContents(1),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: screenSize.height - 82),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 70,
                      left: screenSize.width / 5,
                      right: screenSize.width / 5,
                    ),
                    child: PageViewContent.getContentLargeDevice(context)[11],
                  ),
                  const SizedBox(height: 50),
                  const Spacer(),
                  const BottomBar(withImpressum: true),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
