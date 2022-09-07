import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokokeeats/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
      "/" : (context)=>SplashPage(),
      
     },
    );
  }
}

