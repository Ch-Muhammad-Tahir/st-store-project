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
    apiKey: 'AIzaSyAay4nB_Z5MmIza5-Njh424KUUo2ZUdoy4',
    appId: '1:503205814999:web:e54c196440f79ec4490692',
    messagingSenderId: '503205814999',
    projectId: 'first-flutter-project-auth',
    authDomain: 'first-flutter-project-auth.firebaseapp.com',
    storageBucket: 'first-flutter-project-auth.appspot.com',
    measurementId: 'G-ZZQ7W5JHHK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFScTas7-h5kzOV9JhA8cPd3fBWVHDz1s',
    appId: '1:503205814999:android:9a34f614c8c3f6d2490692',
    messagingSenderId: '503205814999',
    projectId: 'first-flutter-project-auth',
    storageBucket: 'first-flutter-project-auth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD92cWvAPiS9jIXmgboscU0X73v4BnpOGs',
    appId: '1:503205814999:ios:13add47d5255a909490692',
    messagingSenderId: '503205814999',
    projectId: 'first-flutter-project-auth',
    storageBucket: 'first-flutter-project-auth.appspot.com',
    iosClientId:
        '503205814999-0rco3c2tc4lnr8lov3i25khac5598hg3.apps.googleusercontent.com',
    iosBundleId: 'com.example.stStore',
  );
}