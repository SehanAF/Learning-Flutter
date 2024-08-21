// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// // ...

// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show TargetPlatform, defaultTargetPlatform, kIsWeb;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return android;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return ios;
    } else if (defaultTargetPlatform == TargetPlatform.macOS) {
      return macos;
    } else {
      throw UnsupportedError(
        'DefaultFirebaseOptions are not supported for this platform.',
      );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAiuMZSFtZ768wOu6gRsSOoSqJHWu9hHgw',
    appId: '1:636119395160:web:d9863630d52f2476a4d32d',
    messagingSenderId: '636119395160',
    projectId: 'spotify-app0',
    authDomain: 'spotify-app0.firebaseapp.com',
    storageBucket: 'spotify-app0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYciTyMqMpcXHOuKuAROzhbJvPKyUMF_k',
    appId: '1:636119395160:android:c2daa1e38590280da4d32d',
    messagingSenderId: '636119395160',
    projectId: 'spotify-app0',
    storageBucket: 'spotify-app0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgUrw07vdIWtvgsg-0aTW91BIIE7mG5GE',
    appId: '1:636119395160:ios:ad5822ef4c4e3e34a4d32d',
    messagingSenderId: '636119395160',
    projectId: 'spotify-app0',
    storageBucket: 'spotify-app0.appspot.com',
    iosBundleId: 'com.example.spotify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'YOUR_MACOS_API_KEY',
    appId: 'YOUR_MACOS_APP_ID',
    messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
    projectId: 'YOUR_PROJECT_ID',
    storageBucket: 'YOUR_STORAGE_BUCKET',
    iosClientId: 'YOUR_MACOS_CLIENT_ID',
    iosBundleId: 'YOUR_MACOS_BUNDLE_ID',
  );
}