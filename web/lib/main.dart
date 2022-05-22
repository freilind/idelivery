import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:web/authentication/login_screen.dart';
import 'package:web/main_screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: const FirebaseOptions(
        apiKey: "AIzaSyB-7CfcAP53VmaP7gGLEYXxOlq7A_zR9tA",
        authDomain: "idelivery-app.firebaseapp.com",
        projectId: "idelivery-app",
        storageBucket: "idelivery-app.appspot.com",
        messagingSenderId: "1077446177563",
        appId: "1:1077446177563:web:7799459a5d3be7b3f099be"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Web Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null
          ? const LoginScreen()
          : const HomeScreen(),
    );
  }
}
