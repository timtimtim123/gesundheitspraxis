import 'package:flutter/material.dart';

import '../../model/textTheme.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  const InfoText({super.key, required this.type, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type: ',
          style: CustomTextTheme.infoTextTitle,
        ),
        Flexible(
          child: SelectableText(
            text,
            style: CustomTextTheme.infoText,
          ),
        )
      ],
    );
  }
}
