import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/request.dart';

class Database {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<void> sendRequest(Request request) async {
    await _db.collection('mail').add({
      'to': 'info@rueck-grad.ch',
      'message': {
        'subject':
            'Gesundheitspraxis, neue Anfrage von ${request.vorname} ${request.name}',
        'text':
            'Email: ${request.email}\n\nTelefon: ${request.telefon}\n\nNachricht: ${request.text}',
        'html': '',
      },
    });
  }
}
