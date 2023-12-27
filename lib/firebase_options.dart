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
    apiKey: 'AIzaSyDP1qpxDs9Cz2e4l1vt1DZ979T_8bG_e0g',
    appId: '1:67635076861:web:6931cbc80f478eb55f6894',
    messagingSenderId: '67635076861',
    projectId: 'flutterproject-19dc7',
    authDomain: 'flutterproject-19dc7.firebaseapp.com',
    storageBucket: 'flutterproject-19dc7.appspot.com',
    measurementId: 'G-X5QYR5FLT3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-cq3AT58sPHU_shbdWsbELWk-2Ze0Oz4',
    appId: '1:67635076861:android:c0240f1f188ce3125f6894',
    messagingSenderId: '67635076861',
    projectId: 'flutterproject-19dc7',
    storageBucket: 'flutterproject-19dc7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAuK6Ey1qPrsIFgWlY-bdOYSonJzcq7TXU',
    appId: '1:67635076861:ios:3ede0f55f2aefc235f6894',
    messagingSenderId: '67635076861',
    projectId: 'flutterproject-19dc7',
    storageBucket: 'flutterproject-19dc7.appspot.com',
    iosBundleId: 'com.example.flutterproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAuK6Ey1qPrsIFgWlY-bdOYSonJzcq7TXU',
    appId: '1:67635076861:ios:a3c4e13e454e78a65f6894',
    messagingSenderId: '67635076861',
    projectId: 'flutterproject-19dc7',
    storageBucket: 'flutterproject-19dc7.appspot.com',
    iosBundleId: 'com.example.flutterproject.RunnerTests',
  );
}
