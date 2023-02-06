import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDi6r4zP8PAULrRsBQcWN72BEI0B8_Sk90",
            authDomain: "testing-f4b8b.firebaseapp.com",
            projectId: "testing-f4b8b",
            storageBucket: "testing-f4b8b.appspot.com",
            messagingSenderId: "30577304212",
            appId: "1:30577304212:web:c61839373f9b90a6370a81"));
  } else {
    await Firebase.initializeApp();
  }
}
