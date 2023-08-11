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
        return macos;
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
    apiKey: 'AIzaSyAq2mrV5Qi6fa-MwENf9iZ4yMtg9vj1_gI',
    appId: '1:350516041508:web:21724cd44c194ef9cb05b1',
    messagingSenderId: '350516041508',
    projectId: 'porcino-44a0f',
    authDomain: 'porcino-44a0f.firebaseapp.com',
    storageBucket: 'porcino-44a0f.appspot.com',
    measurementId: 'G-ZX4MZ5J2Y6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbNHzYbbOHiebDP5-Isp6I7T3xn6s2bs0',
    appId: '1:350516041508:android:9e053d6b7f21972ecb05b1',
    messagingSenderId: '350516041508',
    projectId: 'porcino-44a0f',
    storageBucket: 'porcino-44a0f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6syQlLS5SHYZsLVToApJ5bVIjAtV4QP0',
    appId: '1:350516041508:ios:a4cdb49d5d838ab7cb05b1',
    messagingSenderId: '350516041508',
    projectId: 'porcino-44a0f',
    storageBucket: 'porcino-44a0f.appspot.com',
    iosClientId: '350516041508-71ihdkrc3u46abbrdfaq537m30kehv0u.apps.googleusercontent.com',
    iosBundleId: 'com.example.porci',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6syQlLS5SHYZsLVToApJ5bVIjAtV4QP0',
    appId: '1:350516041508:ios:caebcd7dc813e95dcb05b1',
    messagingSenderId: '350516041508',
    projectId: 'porcino-44a0f',
    storageBucket: 'porcino-44a0f.appspot.com',
    iosClientId: '350516041508-6t48046c82c3t6ja47ujfsr9tabs9tta.apps.googleusercontent.com',
    iosBundleId: 'com.example.porci.RunnerTests',
  );
}