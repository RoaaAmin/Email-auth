
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig{
  static FirebaseOptions get platformOptions{
     if(Platform.isIOS) {
       //ios & mac
       return const FirebaseOptions(
         appId: '1:304500836786:ios:1019a48c839394eb5d7cab',
         apiKey: 'AIzaSyCNxw5l5UWUxb0WaqaURQgGHvfLYkxoUWs',
         projectId: 'email-auth-ca1a7',
         messagingSenderId:'304500836786',
         iosBundleId: 'com.example.emailAuth',
       );
     }else{
       //android
       return const FirebaseOptions(
         appId: '1:304500836786:android:dd51dff210724af85d7cab',
         apiKey: 'AIzaSyCUhxGm1kfvDZi4lzjJ5MhO6oc-RoGFI9Y',
         projectId:'email-auth-ca1a7',
         messagingSenderId: '304500836786',



       );
     }
     }

  }
