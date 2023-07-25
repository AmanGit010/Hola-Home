import 'package:flutter/material.dart';
import 'package:hola_home/Core/constants/colors.dart';
import 'package:hola_home/feature/onboarding%20screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Center(
        child: Image.asset(
          'assets/png/hh.png',
          scale: 3,
        ),
      ),
    );
  }
}
