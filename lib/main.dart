import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';
import 'view/pages/homePage.dart';

Future<void> main() async {
  // Here we set the URL strategy for our web app.
  // It is safe to call this function when running on mobile or desktop as well.
  setPathUrlStrategy();

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Gesundheitspraxis());
}

class Gesundheitspraxis extends StatelessWidget {
  const Gesundheitspraxis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesundheitspraxis',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey.shade900),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
