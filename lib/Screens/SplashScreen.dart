import 'dart:async';
import 'package:calculator/Screens/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), // Adjust the duration as needed
          () => _navigateToHome(),
    );
  }

  void _navigateToHome() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => MyHomePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // Fade transition animation
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 800), // Animation duration
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen size for responsiveness
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white, // Set your desired background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/maths.png', // Replace with your logo path
              width: size.width * 0.8, // Responsive width
              height: size.width * 0.8, // Keep proportions
              fit: BoxFit.contain,
            ),
            SizedBox(height: size.height * 0.04), // Responsive spacing
            Text(
              'CalcMate',
              style: TextStyle(
                fontSize: size.width * 0.15, // Responsive font size
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
