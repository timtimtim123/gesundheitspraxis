import 'package:flutter/material.dart';

enum SnackBarType { error, warning, success, info }

class SimpleSnackbar {
  static SnackBar _buildSnackbar({
    required String text,
    required SnackBarType type,
    required bool mobile,
    required BuildContext context,
  }) {
    Color? backgroundColor;
    late Color textColor;
    late IconData icon;
    double _width = MediaQuery.of(context).size.width;

    switch (type) {
      case SnackBarType.success:
        backgroundColor = Colors.green[100];
        textColor = Colors.green[800]!;
        icon = Icons.check;
        break;
      case SnackBarType.error:
        backgroundColor = Colors.red[100];
        textColor = Colors.red[800]!;
        icon = Icons.error_outline;
        break;
      case SnackBarType.warning:
        backgroundColor = Colors.amber[100];
        textColor = Colors.amber[800]!;
        icon = Icons.warning_amber_outlined;
        break;
      case SnackBarType.info:
        backgroundColor = Colors.blue[100];
        textColor = Colors.blue[800]!;
        icon = Icons.info_outline;
        break;
      default:
        {
          //TODO add stuff to prevent returning null
          //statements;
        }
    }

    return SnackBar(
      behavior: SnackBarBehavior.floating,
      elevation: 10,
      width: mobile
          ? _width < 430
              ? null
              : 430
          : 680,
      margin: _width < 430
          ? const EdgeInsets.only(left: 15, right: 15, bottom: 15)
          : null,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: textColor),
        borderRadius: BorderRadius.circular(16),
      ),
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: textColor),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              text,
              style: TextStyle(fontSize: mobile ? 16 : 21, color: textColor),
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
    );
  }

  static show(BuildContext context,
      {String text = "Action successful!",
      SnackBarType type = SnackBarType.success,
      bool mobile = true}) {
    ///ScaffoldMessenger moderner but triggers error
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      _buildSnackbar(text: text, type: type, context: context, mobile: mobile),
    );
  }
}
