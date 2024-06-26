// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCRaGuQPVVWqudkthqioEKQMVzcc3D0eFg',
    appId: '1:825668881858:web:655568b5b9f5a1027e1a5b',
    messagingSenderId: '825668881858',
    projectId: 'first-f459d',
    authDomain: 'first-f459d.firebaseapp.com',
    storageBucket: 'first-f459d.appspot.com',
    measurementId: 'G-KLWM0JRD0B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDske9KDWNga32FmsgawDZz2H3AMmJwNEg',
    appId: '1:825668881858:android:f662ab5f03a5776e7e1a5b',
    messagingSenderId: '825668881858',
    projectId: 'first-f459d',
    storageBucket: 'first-f459d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCOdPJmOEGTqNKd3gsxlHfl-hw57j-7pwY',
    appId: '1:825668881858:ios:acf760fb1b950ec47e1a5b',
    messagingSenderId: '825668881858',
    projectId: 'first-f459d',
    storageBucket: 'first-f459d.appspot.com',
    iosBundleId: 'com.example.first',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCOdPJmOEGTqNKd3gsxlHfl-hw57j-7pwY',
    appId: '1:825668881858:ios:acf760fb1b950ec47e1a5b',
    messagingSenderId: '825668881858',
    projectId: 'first-f459d',
    storageBucket: 'first-f459d.appspot.com',
    iosBundleId: 'com.example.first',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCRaGuQPVVWqudkthqioEKQMVzcc3D0eFg',
    appId: '1:825668881858:web:1d8810690de431957e1a5b',
    messagingSenderId: '825668881858',
    projectId: 'first-f459d',
    authDomain: 'first-f459d.firebaseapp.com',
    storageBucket: 'first-f459d.appspot.com',
    measurementId: 'G-D68D8MM16G',
  );
}
