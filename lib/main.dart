import 'package:debongo_app/models/cart.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyCKB-Q2tr0n3TfnTcKd1bcJSle89EUWWB0",
    projectId: "debongo-app-7999",
    appId: '1:274986368110:android:17cf412c268cdf0163ba7f',
    messagingSenderId: '',
    storageBucket: "debongo-app-7999.appspot.com",
  ));
  // to get the currently logined in user
  User? user = FirebaseAuth.instance.currentUser;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
          debugShowCheckedModeBanner: false, home: IntroPage()),
    );
  }
}
