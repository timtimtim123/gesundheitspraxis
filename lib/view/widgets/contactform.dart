import 'package:flutter/material.dart';
import 'package:gesundheitspraxis_website/model/simplesnackbar.dart';

import '../../controller/database.dart';
import '../../controller/responsive.dart';
import '../../controller/validators.dart';
import '../../model/request.dart';
import '../../model/textTheme.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Request _request = Request(null, null, null, null, null);
  static int _state = 0;
  final TextEditingController _vornameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefonController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  static const Color fillColor = Colors.white70; //Color(0xA6346C8A);

  @override
  Widget build(BuildContext context) {
    bool isSmallDevice = false;
    if (ResponsiveWidget.isSmartphoneScreen(context) ||
        ResponsiveWidget.isSmallScreen(context)) {
      isSmallDevice = true;
    }
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Kontakt',
            style: isSmallDevice
                ? CustomTextTheme.headlineSmall
                : CustomTextTheme.headlineLarge,
          ),

          ///SizedBox(height: isSmallDevice ? 30 : 50),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Montag bis Samstag nach Vereinbarung',
              style: isSmallDevice
                  ? CustomTextTheme.labelSmall
                  : CustomTextTheme.labelLarge,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  controller: _vornameController,
                  style: isSmallDevice
                      ? CustomTextTheme.bodyMedium
                      : CustomTextTheme.bodyLarge.copyWith(fontSize: 22),
                  decoration: InputDecoration(
                    hintText: 'Vorname*',
                    hintStyle: isSmallDevice
                        ? CustomTextTheme.bodyMedium
                        : CustomTextTheme.bodyLarge
                            .copyWith(color: Colors.black54, fontSize: 22),
                    filled: true,
                    fillColor: fillColor,
                  ),
                  cursorColor: Colors.grey[700],
                  validator: Validators.generalValidate,
                  onSaved: (String? val) => _request.vorname = val!.trim(),
                ),
              ),
              const SizedBox(width: 20),
              Flexible(
                child: TextFormField(
                  controller: _nameController,
                  style: isSmallDevice
                      ? CustomTextTheme.bodyMedium
                      : CustomTextTheme.bodyLarge.copyWith(fontSize: 22),
                  decoration: InputDecoration(
                    hintText: 'Name*',
                    hintStyle: isSmallDevice
                        ? CustomTextTheme.bodyMedium
                        : CustomTextTheme.bodyLarge
                            .copyWith(color: Colors.black54, fontSize: 22),
                    filled: true,
                    fillColor: fillColor,
                  ),
                  cursorColor: Colors.grey[700],
                  validator: Validators.generalValidate,
                  onSaved: (String? val) => _request.name = val!.trim(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            style: isSmallDevice
                ? CustomTextTheme.bodyMedium
                : CustomTextTheme.bodyLarge.copyWith(fontSize: 22),
            decoration: InputDecoration(
              hintText: 'Email*',
              hintStyle: isSmallDevice
                  ? CustomTextTheme.bodyMedium
                  : CustomTextTheme.bodyLarge
                      .copyWith(color: Colors.black54, fontSize: 22),
              filled: true,
              fillColor: fillColor,
            ),
            cursorColor: Colors.grey[700],
            validator: Validators.validateEmail,
            onSaved: (String? val) => _request.email = val!.trim(),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _telefonController,
            keyboardType: TextInputType.phone,
            style: isSmallDevice
                ? CustomTextTheme.bodyMedium
                : CustomTextTheme.bodyLarge.copyWith(fontSize: 22),
            decoration: InputDecoration(
              hintText: 'Telefon',
              hintStyle: isSmallDevice
                  ? CustomTextTheme.bodyMedium
                  : CustomTextTheme.bodyLarge
                      .copyWith(color: Colors.black54, fontSize: 22),
              filled: true,
              fillColor: fillColor,
            ),
            cursorColor: Colors.grey[700],
            onSaved: (String? val) =>
                val!.isNotEmpty ? _request.telefon = val.trim() : null,
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _textController,
            minLines: 2,
            maxLines: 20,
            style: isSmallDevice
                ? CustomTextTheme.bodyMedium
                : CustomTextTheme.bodyLarge.copyWith(fontSize: 22),
            decoration: InputDecoration(
              hintText: 'Text',
              hintStyle: isSmallDevice
                  ? CustomTextTheme.bodyMedium
                  : CustomTextTheme.bodyLarge
                      .copyWith(color: Colors.black54, fontSize: 22),
              filled: true,
              fillColor: fillColor,
            ),
            cursorColor: Colors.grey[700],
            onSaved: (String? val) =>
                val!.isNotEmpty ? _request.text = val.trim() : null,
          ),
          SizedBox(
            height: isSmallDevice
                ? 50
                : ResponsiveWidget.isVeryLargeScreen(context)
                    ? 85
                    : 70,
          ),
          MaterialButton(
            onPressed: () => sendRequest(isSmallDevice, context),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            color: const Color(0xFF2D4957),
            elevation: 15,
            height: 60,
            minWidth: ResponsiveWidget.isSmallScreen(context) ? 250 : 300,
            child: setUpButtonChild(),
          ),
        ],
      ),
    );
  }

  Widget setUpButtonChild() {
    if (_state == 0) {
      return Text(
        'Anfrage senden',
        style: CustomTextTheme.labelLarge.copyWith(color: Colors.white),
      );
    } else if (_state == 1) {
      return const CircularProgressIndicator(color: Colors.white);
    } else {
      return const Icon(Icons.thumb_up, color: Colors.white, size: 30);
    }
  }

  Future<void> sendRequest(bool isSmallDevice, BuildContext context) async {
    if (_state != 2) {
      if (Validators.validateAndSaveFormState(_formKey)) {
        try {
          setState(() => _state = 1);
          await Database.sendRequest(_request);

          if (context.mounted) {
            SimpleSnackbar.show(context,
                type: SnackBarType.success,
                mobile: isSmallDevice,
                text: 'Deine Anfrage wurde erfolgreich übermittelt.');
          }

          setState(() => _state = 2);
          _vornameController.clear();
          _nameController.clear();
          _emailController.clear();
          _telefonController.clear();
          _textController.clear();
        } catch (e) {
          setState(() => _state = 0);
          debugPrint(e.toString());

          if (context.mounted) {
            SimpleSnackbar.show(context,
                type: SnackBarType.error,
                mobile: isSmallDevice,
                text:
                    'Deine Anfrage konnte leider nicht übermittelt werden. Error: ${e.toString()}');
          }
        }
      }
    }
  }
}
