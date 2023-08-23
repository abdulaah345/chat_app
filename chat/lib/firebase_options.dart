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
    apiKey: 'AIzaSyAMcl22QxWgMDdmcHM0Bo4O1rQk5Ms7kqE',
    appId: '1:269911554116:web:2ad52d5c0cb263e98d6411',
    messagingSenderId: '269911554116',
    projectId: 'newchat-5e046',
    authDomain: 'newchat-5e046.firebaseapp.com',
    storageBucket: 'newchat-5e046.appspot.com',
    measurementId: 'G-HJNRF8VVN7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZljptXF09Gtf6ZCnaicstkLmsRYjTap8',
    appId: '1:269911554116:android:973fe5dbf83a9e018d6411',
    messagingSenderId: '269911554116',
    projectId: 'newchat-5e046',
    storageBucket: 'newchat-5e046.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZlAhISTwZSKMUZILEWeuC7pKWeJW2-J4',
    appId: '1:269911554116:ios:1efeef972b3d76938d6411',
    messagingSenderId: '269911554116',
    projectId: 'newchat-5e046',
    storageBucket: 'newchat-5e046.appspot.com',
    iosClientId: '269911554116-lmop1k1ru9tdr59dnrm6c1oldohs2f0a.apps.googleusercontent.com',
    iosBundleId: 'com.example.chat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZlAhISTwZSKMUZILEWeuC7pKWeJW2-J4',
    appId: '1:269911554116:ios:a637e2d6607d5f138d6411',
    messagingSenderId: '269911554116',
    projectId: 'newchat-5e046',
    storageBucket: 'newchat-5e046.appspot.com',
    iosClientId: '269911554116-tos31sm58509fgc5n13mopqp0mc9ff68.apps.googleusercontent.com',
    iosBundleId: 'com.example.chat.RunnerTests',
  );
}
