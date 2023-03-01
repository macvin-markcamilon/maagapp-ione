import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDQE5sYxE6QlExNCIFld2Aa3XL6bMO8Dxs",
            authDomain: "magapp-ione.firebaseapp.com",
            projectId: "magapp-ione",
            storageBucket: "magapp-ione.appspot.com",
            messagingSenderId: "1064542876687",
            appId: "1:1064542876687:web:ae31a7d6c24e4501639f7a",
            measurementId: "G-V9041J179M"));
  } else {
    await Firebase.initializeApp();
  }
}
