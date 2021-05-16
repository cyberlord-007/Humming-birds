import 'package:flutter/material.dart';
import 'package:humming_birds/screens/HomeScreen.dart';
import 'package:humming_birds/screens/OnboardingScreen.dart';
import 'package:humming_birds/screens/ProfileScreen.dart';
import 'package:humming_birds/screens/VideosScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Humming Birds',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        VideosScreen.id: (context) => VideosScreen()
      },
    );
  }
}



