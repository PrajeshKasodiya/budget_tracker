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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyBLjYb-ZTx1fixnnw5T8fx2Sv9GYsMSfLY",
      authDomain: "portfolio-portal-prod.firebaseapp.com",
      projectId: "portfolio-portal-prod",
      storageBucket: "portfolio-portal-prod.appspot.com",
      messagingSenderId: "198087973653",
      appId: "1:198087973653:web:2dd88293b7d7c74fdc671c",
      measurementId: "G-JYBLE9VZ5C"
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDzFuoSllm8w9I36y8BA48vMo4eVYk7dWk',
    appId: '1:738203485184:android:a38c083a89ab4d479f84e5',
    messagingSenderId: '738203485184',
    projectId: 'budget-tracker-964a0',
    storageBucket: 'budget-tracker-964a0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApi_IV13yolZiQARNkQy7Uvpjt0BUhB8c',
    appId: '1:198087973653:ios:38b17b75efafb299dc671c',
    messagingSenderId: '198087973653',
    projectId: 'portfolio-portal-prod',
    storageBucket: 'portfolio-portal-prod.appspot.com',
    iosBundleId: 'com.trueuly.portfolio',
  );
}
