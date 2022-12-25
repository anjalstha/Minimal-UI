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
    apiKey: 'AIzaSyBJ38k32riAhfjoxb4dDEOtUbY6VlBVoKI',
    appId: '1:452954749729:web:5c8f4353b426e869e85c60',
    messagingSenderId: '452954749729',
    projectId: 'minimal-ui-18184',
    authDomain: 'minimal-ui-18184.firebaseapp.com',
    storageBucket: 'minimal-ui-18184.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCph5rUtrpf8i5MtwQ8nfLruOWyDaGCSVQ',
    appId: '1:452954749729:android:5dc8debe80b32a10e85c60',
    messagingSenderId: '452954749729',
    projectId: 'minimal-ui-18184',
    storageBucket: 'minimal-ui-18184.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBoRqQtsecTesr9B5g8dcHK1rNlJvk3yY',
    appId: '1:452954749729:ios:449bd92dbdb38e9ee85c60',
    messagingSenderId: '452954749729',
    projectId: 'minimal-ui-18184',
    storageBucket: 'minimal-ui-18184.appspot.com',
    iosClientId: '452954749729-un82fku5ns39olom3j2c0po6oua1vrvn.apps.googleusercontent.com',
    iosBundleId: 'com.example.minimalUi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBoRqQtsecTesr9B5g8dcHK1rNlJvk3yY',
    appId: '1:452954749729:ios:449bd92dbdb38e9ee85c60',
    messagingSenderId: '452954749729',
    projectId: 'minimal-ui-18184',
    storageBucket: 'minimal-ui-18184.appspot.com',
    iosClientId: '452954749729-un82fku5ns39olom3j2c0po6oua1vrvn.apps.googleusercontent.com',
    iosBundleId: 'com.example.minimalUi',
  );
}