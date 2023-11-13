import 'package:flutter/material.dart';

class Validators {
  static String? generalValidate(String? value) {
    if (value == null || value.isEmpty) return 'Eingabe erwartet';
    return null;
  }

  static String? validateEmail(String? value) {
    if (value != null) {
      String pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = RegExp(pattern);
      if (!regex.hasMatch(value.trim())) {
        return 'Gültige Emailadresse erwartet';
      }
    }
    return null;
  }

  static String? validateNumber(String? value) {
    if (value == null || value.isEmpty || value is! int) {
      return 'Zahl erwartet';
    }
    return null;
  }

  static bool validateAndSaveFormState(GlobalKey<FormState> formKey) {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
