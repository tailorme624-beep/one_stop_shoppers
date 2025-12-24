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
          'DefaultFirebaseOptions have not been configured for macOS - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for Windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for Linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQpqI4p8bA2PCqqbpbmSvFAVe47bMtPps',
    appId: '1:1094101181560:android:1986a62e4f55d110e2798d',
    messagingSenderId: '1094101181560',
    projectId: 'onestopshoppers-aab9d',
    storageBucket: 'onestopshoppers-aab9d.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQpqI4p8bA2PCqqbpbmSvFAVe47bMtPps',
    appId: '1:1094101181560:ios:53eu7430h8roiqqi638m4vm4hj71pjeu',
    messagingSenderId: '1094101181560',
    projectId: 'onestopshoppers-aab9d',
    storageBucket: 'onestopshoppers-aab9d.firebasestorage.app',
    iosBundleId: 'com.oneStopShoppers',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDQpqI4p8bA2PCqqbpbmSvFAVe47bMtPps',
    appId: '1:1094101181560:web:1986a62e4f55d110e2798d',
    messagingSenderId: '1094101181560',
    projectId: 'onestopshoppers-aab9d',
    authDomain: 'onestopshoppers-aab9d.firebaseapp.com',
    storageBucket: 'onestopshoppers-aab9d.firebasestorage.app',
  );
}
