import 'dart:async';

import 'package:flutter/material.dart';
import 'package:humming_birds/screens/HomeScreen.dart';
import '../utils/contsants.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushNamed(HomeScreen.id);
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/logo.png')
            ),
            Text('Humming Birds',style: kLogoTextStyle,),
          ],
        ),
      ),
    );
  }
}
