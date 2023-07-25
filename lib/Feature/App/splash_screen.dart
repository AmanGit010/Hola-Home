import 'package:flutter/material.dart';
import 'package:hola_home/Core/constants/colors.dart';
import 'package:hola_home/Feature/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.yellow,
      body: Center(
        child: Image.asset(
          'assets/png/hh.png',
          scale: 3,
        ),
      ),
    );
  }
}
