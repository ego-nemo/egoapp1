import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'MyApp.dart';
import 'Firebase/firebase_options.dart';

void main() async {
  // Firebaseの初期化
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
