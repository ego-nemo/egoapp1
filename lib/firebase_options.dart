// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCp_s3Euciif3vNF1BjKmOs2sface4z1ho',
    appId: '1:690376652681:web:a2a7094a641b86d2ca1358',
    messagingSenderId: '690376652681',
    projectId: 'egoapp1-717fc',
    authDomain: 'egoapp1-717fc.firebaseapp.com',
    storageBucket: 'egoapp1-717fc.appspot.com',
    measurementId: 'G-B44GVT86L5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBZGncUnxe-sX2QmrSCi4DYZ3d6IBlf2yk',
    appId: '1:690376652681:android:2f38202b1c4531beca1358',
    messagingSenderId: '690376652681',
    projectId: 'egoapp1-717fc',
    storageBucket: 'egoapp1-717fc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCj1fkP-imHa3AhelnpHDBM6IzcBpX-gDk',
    appId: '1:690376652681:ios:a2d3aa3b1c9af132ca1358',
    messagingSenderId: '690376652681',
    projectId: 'egoapp1-717fc',
    storageBucket: 'egoapp1-717fc.appspot.com',
    iosClientId: '690376652681-o19nch48k4b71lmccd29c84bkqntoufk.apps.googleusercontent.com',
    iosBundleId: 'com.example.egoapp1',
  );
}