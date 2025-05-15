import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAJHTFqB6UO5jEl5KyrHJgBbUxWX-GgTkQ",
            authDomain: "fiyatapp-xumfmh.firebaseapp.com",
            projectId: "fiyatapp-xumfmh",
            storageBucket: "fiyatapp-xumfmh.firebasestorage.app",
            messagingSenderId: "858351322797",
            appId: "1:858351322797:web:9d6735c2c3dcd0ad822824"));
  } else {
    await Firebase.initializeApp();
  }
}
