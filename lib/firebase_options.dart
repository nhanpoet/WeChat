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
    apiKey: 'AIzaSyCnK8YyG-sY-aiZh5GgKSRplrUNclwO-DQ',
    appId: '1:702907656241:web:ac427373989a8ca99e0d10',
    messagingSenderId: '702907656241',
    projectId: 'wechat-d25aa',
    authDomain: 'wechat-d25aa.firebaseapp.com',
    storageBucket: 'wechat-d25aa.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBP-uXbCxQUx-g8ph--uba_qJ1FRs6i7P8',
    appId: '1:702907656241:android:6a24c01852b202db9e0d10',
    messagingSenderId: '702907656241',
    projectId: 'wechat-d25aa',
    storageBucket: 'wechat-d25aa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2BV0y1xGU7TzRi2uA9Kvu745CTYqIPNs',
    appId: '1:702907656241:ios:be0289adeded874a9e0d10',
    messagingSenderId: '702907656241',
    projectId: 'wechat-d25aa',
    storageBucket: 'wechat-d25aa.appspot.com',
    iosBundleId: 'com.example.wechat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB2BV0y1xGU7TzRi2uA9Kvu745CTYqIPNs',
    appId: '1:702907656241:ios:e6ae07bf59ebf3749e0d10',
    messagingSenderId: '702907656241',
    projectId: 'wechat-d25aa',
    storageBucket: 'wechat-d25aa.appspot.com',
    iosBundleId: 'com.example.wechat.RunnerTests',
  );
}
