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
    apiKey: 'AIzaSyDjNSVkh9GVj1glAxUpZlGB5ABR9kxvSFw',
    appId: '1:860979148352:web:6cea845b3fc34281a5d1a5',
    messagingSenderId: '860979148352',
    projectId: 'flavr-hack',
    authDomain: 'flavr-hack.firebaseapp.com',
    storageBucket: 'flavr-hack.appspot.com',
    measurementId: 'G-DKFG10WW58',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAa4Gy8r4wyz6AOmqtG3qkflOZHHPtATQE',
    appId: '1:860979148352:android:3933f0252c3d59a9a5d1a5',
    messagingSenderId: '860979148352',
    projectId: 'flavr-hack',
    storageBucket: 'flavr-hack.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWzXWy1Qlehb9pcig95WzGDyOQkQykeOc',
    appId: '1:860979148352:ios:e18614adba6a267fa5d1a5',
    messagingSenderId: '860979148352',
    projectId: 'flavr-hack',
    storageBucket: 'flavr-hack.appspot.com',
    iosBundleId: 'com.example.flavr',
  );
}