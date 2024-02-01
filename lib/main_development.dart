import 'package:firebase_core/firebase_core.dart';
import 'package:flavor_example/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const App(
      flavor: "Development",
    ),
  );
}
