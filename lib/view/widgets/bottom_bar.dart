import 'package:flutter/material.dart';

import '../../controller/responsive.dart';
import '../pages/angebot.dart';
import '../pages/angebot_mobile.dart';
import 'info_text.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    required this.withImpressum,
    Key? key,
  }) : super(key: key);

  final bool withImpressum;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blueGrey[900]!,
      color: const Color(0xFF1E323B),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.withImpressum) ...[
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AngebotMobile(16),
                        ),
                      ),
                      onHover: (hovering) {
                        setState(() => isHovering = hovering);
                      },
                      child: Text(
                        'Impressum/Datenschutz',
                        style: TextStyle(
                          fontFamily: 'Kalam',
                          color: isHovering
                              ? Colors.blueGrey[100]
                              : Colors.blueGrey[300],
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          decoration:
                              isHovering ? TextDecoration.underline : null,
                          decorationColor: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.blueGrey,
                    ),
                  ],
                  const SizedBox(height: 5),
                  const InfoText(
                    type: 'Email',
                    text: 'info@rueck-grad.ch',
                  ),
                  const SizedBox(height: 3),
                  const InfoText(
                    type: 'Telefon',
                    text: '079 728 16 56',
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 10, right: 10, bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Angebot(17),
                          ),
                        ),
                        onHover: (hovering) {
                          setState(() => isHovering = hovering);
                        },
                        child: Text(
                          'Impressum/Datenschutz',
                          style: TextStyle(
                            fontFamily: 'Kalam',
                            color: isHovering
                                ? Colors.blueGrey[100]
                                : Colors.blueGrey[300],
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            decoration:
                                isHovering ? TextDecoration.underline : null,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.blueGrey,
                        width: 2,
                        height: 60,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InfoText(
                            type: 'Email',
                            text: 'info@rueck-grad.ch',
                          ),
                          SizedBox(height: 5),
                          InfoText(
                            type: 'Telefon',
                            text: '079 728 16 56',
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
