import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:posto/app/app.bottomsheets.dart';
import 'package:posto/app/app.locator.dart';
import 'package:posto/firebase_options.dart';
import 'package:posto/ui/views/app/app_view.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupLocator();
  setupBottomSheetUi();

  runApp(const AppView());
}
