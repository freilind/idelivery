import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:seller/global/global.dart';
import 'package:seller/splashScreen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sellers App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: const ColorScheme(
            primary: Colors.blue,
            primaryContainer: Colors.white70,
            secondary: Colors.pink,
            tertiary: Colors.green,
            surface: Colors.purpleAccent,
            background: Color(0xFFFFFBFA),
            error: Color(0xfff4310a),
            onPrimary: Colors.white,
            onSecondary: Colors.deepOrange,
            onSurface: Color(0xfff8836c),
            onBackground: Color(0xfffaac9d),
            onError: Colors.redAccent,
            brightness: Brightness.light,
          ),
          //primarySwatch: Colors.blue,
          primaryColor: Colors.deepOrange,
          secondaryHeaderColor: const Color(0xfff09819),
          //accentColor: Colors.blue,
          textTheme: ThemeData.light().textTheme.copyWith(
                //bodyText1: const TextStyle(color: Colors.black, fontSize: 22.0),
                // bodyText2: const TextStyle(color: Colors.black, fontSize: 18.0),
                headline1: const TextStyle(
                    color: Colors.white, fontSize: 80, fontFamily: "Signatra"),
                headline2:
                    const TextStyle(color: Colors.white, fontFamily: "Lobster"),
                headline3: const TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                    letterSpacing: 3,
                    fontFamily: "Signatra"),
                headline4: const TextStyle(
                    color: Colors.white, fontSize: 30.0, fontFamily: "Lobster"),
                headline5: const TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 2,
                    fontFamily: "Signatra"),
                headline6:
                    const TextStyle(color: Colors.white, fontFamily: "Lobster"),
                subtitle2: const TextStyle(color: Colors.grey),
                labelMedium: const TextStyle(
                    color: Color(0xfff09819),
                    fontSize: 18.0,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Varela"),
              )),
      home: const MySplashScreen(),
    );
  }
}
